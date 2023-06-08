#this is an example of a bisection method which will plot the function and the root
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

f = x-> 60 * tan(x) - (115920/5000)*(1/cos(x)^2) - 0.5
q = root(0, pi/2, f, 50)
error = q[1]
result = q[2]
itterations = q[3]
plot(f,0,pi/4)
#The x-axis on the graph uses radians, not degrees
