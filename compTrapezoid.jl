# this is the composite trapezoid rule
# it is used to approximate the integral of a function f from a to b
function compTrapezoid(a,b,n,f)
    interval = (b-a)/n
    result = 0.0
    for i = 1:n
        result = result + (interval)*((f(a+i*interval)+f(a+(i-1)*interval))/2)
    end
    return result
end

f = x-> (x+3)/sqrt((4-x^2))
output = compTrapezoid(0,1,20,f)
