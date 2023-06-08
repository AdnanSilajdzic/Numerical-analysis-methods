#this is a simple implementation of the explicit Euler method
#it is used to solve the differential equation y' = f(t,y) with y(a) = y0
using Plots
function explicit(a,b,y,n)
    h = (b-a)/n
    x = [a]
    for i = 1:n
        push!(x, a+i*h)
        push!(y, y[i] + h*equation(x[i],y[i]))
    end
    return (x,y)
end

equation(t,y) = 1/t - y/t - y^2
y = [-1.0]
result = explicit(1.0,2,y,5)
f = x-> -1/x
scatter(result[1],result[2])
plot!(f,1,2)
