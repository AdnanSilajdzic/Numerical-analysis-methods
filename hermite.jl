#this is an example of Hermite interpolation to interpolate a function based on a set of points and their derivatives
using ForwardDiff
function hdiff(x,y,yprime)
    m = length(x)
    l = 2m

    z = Array{Float64}(undef, l)
    a = Array{Float64}(undef, l)
    for i in 1:m
        z[2i-1]=x[i]
        z[2i]=x[i]
    end
    for i in 1:m
        a[2i-1] = y[i]
        a[2i] = y[i]
    end
    for i in reverse(collect(2:m))
        a[2i] = yprime[i]
        a[2i-1] = (a[2i-1]-a[2i-2])/(z[2i-1]-z[2i-2])
    end
    a[2] = yprime[1]
    for j in 3:1
        for i in reverse(collect(j:l))
            a[i] = (a[i]-a[i-1])/(z[i]-z[i-(j-1)])
        end
    end
    return (a)
end

function Hermite(x,y,yprime,w)
    m = length(x)
    a=hdiff(x,y,yprime)
    z = Array{Float64}(undef, 2m)
    for i in 1:m
        z[2i-1]=x[i]
        z[2i] = x[i]
    end
    sum=a[1]
    pr=1.0
    for j in 1:(2m-1)
        pr = pr*(w-z[j])
        sum = sum+a[j+1]*pr
    end
    return (sum)
end

x = [-1.5, 1.6, 4.7]
y = [0.071, -0.029, -0.012]
yy = [1,-1,1]
scatter(x,y)
res = hdiff(x,y,[1,-1,1])
result = w-> Hermite(x,y,yy,w)
plot!(result,-1.5,5)
