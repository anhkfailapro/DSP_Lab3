n = -5:5
x = double(n>=0 & n<=3)
y = double((n.^2)>=0 & (n.^2)<=3)
y_shift = double(((n-2).^2)>=0 & ((n-2).^2)<=3)
x_shift = double(n>=2 & n<=5)
y2 = double((n.^2-2)>=0 & (n.^2-2)<=3)

subplot(5,1,1)
plot2d3(n,x)
title("2.6(b1) x(n)")

subplot(5,1,2)
plot2d3(n,y)
title("2.6(b2) y(n)=x(n^2)")

subplot(5,1,3)
plot2d3(n,y_shift)
title("2.6(b3) y(n-2)=x((n-2)^2)")

subplot(5,1,4)
plot2d3(n,x_shift)
title("2.6(b4) x(n-2)")

subplot(5,1,5)
plot2d3(n,y2)
title("2.6(b5) y2(n)=x(n^2-2)")
