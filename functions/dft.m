function [Xk] = dft(xn,N)
% Computes Discrete Fourier Transform
% -----------------------------------
% [Xk] = dft(xn,N)
% Xk = DFT coeff. array over 0 <= k <= N-1
% xn = N-point finite-duration sequence
% N = Length of DFT
%
n = [0:1:N-1];
k = [0:1:N-1];
xn=xn(:);        % make sure xn is a column vector

WN = exp(-j*2*pi/N *n'*k); % creates a N by N DFT matrix
Xk = WN * xn;

Xk=Xk.';         % make it a row vector of DFT coefficients



