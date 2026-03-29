function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    start = min(min(n1), min(n2));
    endd  = max(max(n1), max(n2));
    n = start:endd;
    x1 = zeros(1,length(n));
    x2 = zeros(1,length(n));
    x1(n1 - start + 1) = x1n;
    x2(n2 - start + 1) = x2n;
    yn = x1 + x2;
    yorigin = 1 - start;

    subplot(3,1,1)
    plot2d3(n,x1)
    title("x1(n)")

    subplot(3,1,2)
    plot2d3(n,x2)
    title("x2(n)")

    subplot(3,1,3)
    plot2d3(n,yn)
    title("y(n)=x1(n)+x2(n)")
endfunction
