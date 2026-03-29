function [yn, yorigin] = advance(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin + k;
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    subplot(2,1,1);
    plot2d3(nx, xn);
    title("Original signal x(n)");

    subplot(2,1,2);
    plot2d3(ny, yn);
    title("Advanced signal y(n)");
endfunction
