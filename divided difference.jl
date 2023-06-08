#this is a program to calculate the divided difference of a function
#and then use the divided difference to calculate the newton form of the function
using Plots
function nums(a,b,n,f)
    h = (b-a)/n
    x = [float(a)]
    y = [f(a)]
    for i = 1:n
        push!(x, a+i*h)
        push!(y, f(x[end]))
    end
    scatter(x,y)
    result = divd(x,y)
    return(x, y, result)
end

function divd(x,f)
    n = length(x)
    for i=2:n
        for j=1:i-1
            f[i] = (f[j] - f[i])/(x[j] - x[i])
        end
    end
    return f
end

function newtonform(x,d,xx)
    n = length(d)
    result = d[n]
    for i=n-1:-1:1
        result = result*(xx - x[i]) + d[i]
    end
    return result
end

f = x-> 1/(1+x^2)
q = nums(-5,5,20,f)
x = q[1]
y = q[2]
divdmatrix = q[3]
t = xx-> newtonform(x,divdmatrix,xx)
plot!([t,f],-5,5)
