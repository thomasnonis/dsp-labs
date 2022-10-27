function [xn] = idft(Xk,N)
% Computes Inverse Discrete Transform
% -----------------------------------
% [xn] = idft(Xk,N)
% xn = N-point sequence over 0 <= n <= N-1
% Xk = DFT coeff. array over 0 <= k <= N-1
% N = length of DFT
%
n = [0:1:N-1];
k = [0:1:N-1];
Xk=Xk(:);        % make sure Xk is a column vector

WN = exp(j*2*pi/N *n'*k); % creates a N by N IDFT matrix
xn = (WN * Xk)/N;

xn = xn.';     % make it a row vector