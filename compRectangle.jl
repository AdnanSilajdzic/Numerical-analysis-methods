#this is the composite rectangle rule
#it is used to approximate the integral of a function f from a to b
function compRectangle(a,b,n,f)
    interval = (b-a)/n
    result = 0.0
    for i = 1:n
        result = result + interval*f(a+(i*interval))
    end
    return result
end

f = x-> sin(x)
output = compRectangle(0,4,1000000,f)
