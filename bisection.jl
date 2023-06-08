#This is an example of the bisection method in Julia
#root uses the bisection method to find the root of a function f
function root(a,b,f,n)
  Le = []
  ap=[]
  num =0
  for i = 1:n
      num = num+1
      c= (b+a)/2
      L = abs(f(c))
      push!(Le, L)
      push!(ap,c*180/pi)
      if L < 10^-12
          break
      end
      s = sign(f(a))*sign(f(c))
      s < 0 ? b = c : a = c
end
  return[Le, ap, num]
end

f = x-> 4*exp(-x)*sin(x)-1
q = root(0, 0.5, f, 15)
error = q[1]
result = q[2]
itterations = q[3]
