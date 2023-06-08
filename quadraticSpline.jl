#this is a quadratic spline interpolation
#it is used to approximate a function based on a set of points
using Plots

function quadratic(x,y,z,zz)
        n = length(x)
        res = 0.0
        zvalue=0.0
        for i = 1:n-1
            zvalue = -z[i]+2*((y[i+1]-y[i])/(x[i+1]-x[i]))
            push!(z,zvalue)
        end
        for i = 1:n-1
            if zz>=x[i] && zz<=x[i+1]
                res =((z[i+1]-z[i])/(2*(x[i+1]-x[i])))*(zz-x[i])^2+z[i]*(zz-x[i])+y[i]
                break
            end
        end
        return (res,z)
end
x = collect(-5.0:0.5:5)
y=[]
n = length(x)
for i=1:n
    push!(y,1/(1+x[i]^2))
end
z = [0.0]
c = deepcopy(z)
t = zz-> quadratic(x,y,z,zz)[1]
#result = quadratic(x,y,c,0)[2]
scatter(x,y)
plot!(t,x[1],x[end])
f =x->1/(1+x^2)
plot!(f,x[1],x[end])
