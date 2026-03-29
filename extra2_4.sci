n = -2:2
x = [2 3 4 5 6]

xf = x($:-1:1)

xe = (x + xf)/2
xo = (x - xf)/2

subplot(3,1,1)
plot2d3(n,x)
title("2.4 original x(n)")

subplot(3,1,2)
plot2d3(n,xe)
title("2.4 even xe(n)")

subplot(3,1,3)
plot2d3(n,xo)
title("2.4 odd xo(n)")
