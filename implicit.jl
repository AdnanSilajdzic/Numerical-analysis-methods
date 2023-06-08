#this is the implicit euler method
#it is used to solve the differential equation y' = f(t,y) with y(a) = y0
function implicit_euler(f, a, b, x1, n)

  h = (b - a) / n

  t = zeros(n + 1)
  x = zeros(n + 1)

  x[1] = x1
  t[1] = a
  eq(k) = y[k] + h * root(t[k], y[k])
  for k = 1:n

    x[k+1] = x[k] + h * root(t[k+1], eq,10)

    t[k+1] = a + k * h

  end

  return x

end

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

y = [-1.0]
ff(t,y) = 1/t - y/t - y^2
result = implicit_euler(ff, 1.0, 2, -1.0, 5)
