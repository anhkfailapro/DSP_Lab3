n = -1:4
x = [1 1 1 1 1/2 1/2]

subplot(4,2,1)
plot2d3(n+2,x)
title("2.2(a) x(n-2)")

subplot(4,2,2)
plot2d3(4-n,x)
title("2.2(b) x(4-n)")

subplot(4,2,3)
plot2d3(n-2,x)
title("2.2(c) x(n+2)")

u = (n<=2)
y = x.*u

subplot(4,2,4)
plot2d3(n,y)
title("2.2(d) x(n)u(2-n)")

y = zeros(1,length(n))
k = find(n==3)
y(k) = x(k-1)

subplot(4,2,5)
plot2d3(n,y)
title("2.2(e) x(n-1)delta(n-3)")

y = x.^2

subplot(4,2,6)
plot2d3(n,y)
title("2.2(f) x^2(n)")

xf = x($:-1:1)
xe = (x+xf)/2

subplot(4,2,7)
plot2d3(n,xe)
title("2.2(g) even part")

xo = (x-xf)/2

subplot(4,2,8)
plot2d3(n,xo)
title("2.2(h) odd part")
