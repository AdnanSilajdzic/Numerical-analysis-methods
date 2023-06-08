#This is an example of the newton's method in Julia
#it is used to find the root of a function f
using ForwardDiff
using Plots

function root(a,f,n)
    r = []
    e = []
    for i = 1:n
        push!(r,a)
        push!(e,abs(f(a)))
        a = a - ((f(a)/ForwardDiff.derivative(f, a)))

        abs(f(a)) < 10^-13 ? break : 0
    end
    return r
end
f = x-> ((x-2)*x+1) * x - 3
g = root(3,f,6)
r = g[1]
e = g[2]
