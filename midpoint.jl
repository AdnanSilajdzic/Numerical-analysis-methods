#this is the midpoint method for solving ODEs
#it is used to solve the differential equation y' = f(t,y) with y(a) = y0
function midpoint(f,a,b,y1,n)
    h = (b-a)/n
    t = zeros(n+1)
    t[1] = a
    x = zeros(n+1)
    x[1] = y1
    for k=1:n
        valueToUse = x[k] + h*f(t[k],x[k])/2
        x[k+1]= x[k] + h*f(t[k] + h/2, valueToUse)
        t[k+1] = a + (k)*h
    end
    return x
end


#1st problem
f = (y,t)->(1/t)-(y/t)-(y^2)
result = midpoint(f,1,2,-1,10)
