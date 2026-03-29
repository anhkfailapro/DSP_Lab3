n = -3:3
x = [0 1/3 2/3 1 1 1 1]

subplot(5,1,1)
plot2d3(n,x)
title("2.1(a) x(n)")

xf = x($:-1:1)
nf = -n($:-1:1)
nf1 = nf + 4

subplot(5,1,2)
plot2d3(nf1,xf)
title("2.1(b) Fold then delay 4 samples")

nd = n - 4
xd = x
nf2 = -nd($:-1:1)
xf2 = xd($:-1:1)

subplot(5,1,3)
plot2d3(nf2,xf2)
title("2.1(b) Delay 4 samples then fold")

nd2 = n - 4
xf3 = x($:-1:1)
nf3 = -nd2($:-1:1)

subplot(5,1,4)
plot2d3(nf3,xf3)
title("2.1(c) x(-n+4)")

subplot(5,1,5)
plot2d3(n,x)
title("2.1(e) impulse representation of x(n)")
