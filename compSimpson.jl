#this is the composite simpson's rule
#it is used to approximate the integral of a function f from a to b
function compSimpson(a,b,n,f)
    interval = (b-a)/n
    result = f(a) + f(b)
    x1 = 0.0
    x2 = 0.0

    for i in 1:n-1
        x=a+i*interval
        if i%2==0
            x2+=f(x)
        else
            x1+=f(x)
        end
    end
    final = interval*(result+2*x2+4*x1)/3
    return final
end

f = x-> tan(x)^4
output = compSimpson(0,pi/4,50,f)
