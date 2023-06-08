#this is the combination of composite simpson and composite trapezoid
#it is used to approximate the integral of a function f from a to b
function combination(a,b,n,f)
    interval = (b-a)/n
    result = 0.0
    if n%2==0
        result=compSimpson(a,b,n,f)
    else
        result = result + compTrapezoid(a,a+interval,1,f)
        result = result + compSimpson((a+interval),b,n-1,f)
    end
    return result
end

f = x-> atan(x)
output = combination(0,1,20,f)
