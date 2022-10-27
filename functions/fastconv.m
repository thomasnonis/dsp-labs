function [y] = fastconv(x,h)
% Fast convolution using FFT
% --------------------------------------------------------------
% [y] = fastconv(x,h)
% y = output sequence
% x = first input sequence
% h = second input sequence
%
L=length(x)+length(h)-1;            % output length
N = 2^(ceil(log10(L)/log10(2)));   % next power of 2
y = ifft(fft(h,N).*fft(x,N));
y=y(1:L);