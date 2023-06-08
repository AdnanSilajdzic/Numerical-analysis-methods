#this is the composite midpoint method
#it is used to approximate the integral of a function f from a to b
function compMidpoint(a,b,n,f)
    interval = (b-a)/n
    result = 0.0
    for i = 1:n
        mid = ((a+(i-1)*interval)+(a+i*interval))/2
        result = result + interval*f(mid)
    end
    return result
end

f = x-> exp(-2*x)
output = compMidpoint(0,2,4,f)
