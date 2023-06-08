#This is an example of linear spline interpolation
#it is used to create an approximation of a function based on a set of points
#it is not as accurate as a cubic spline or quadratic spline, but it is much faster
using Plots

function linearSpline(x,y,z)
    n = length(x)
    res = 0
    for i = 1:n-1
        if z>=x[i] && z<=x[i+1]
            res = (z-x[i+1])/(x[i]-x[i+1])*y[i]+(z-x[i])/(x[i+1]-x[i])*y[i+1]
            break
        end
    end
    return res
end
x = [0,1,3,4,8]
y = [8,12,2,6,0]
t = z-> linearSpline(x,y,z)
scatter(x,y)
plot!(t,x[1],x[end])
