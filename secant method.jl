#This is an example of the secant method in Julia
#it is used to find the root of a function f
using Plots

function root(a,b,f,n)
    r = []
    e = []
    for i = 1:n
        push!(e,f(b))
        c = b - f(b)*(b-a)/(f(b)-f(a))
        a=b;
        b=c;
        push!(r,c)
    end
    return[r]
end
f = x-> ((x-2)*x+1) * x - 3
g = root(3,f,6)
s = g[1]
