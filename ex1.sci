function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    subplot(2,1,1);
    plot2d3(nx, xn);
    title("Origin signal x(n)")
    
    subplot(2,1,2);
    plot2d3(ny, yn);
    title("Delayed signal y(n)");
endfunction

