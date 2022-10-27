function y = cirshftt(x,m,N)
% Circular shift of m samples wrt size N 
% in sequence x
% -------------------------------------------------------------------
% [y] = cirshftt(x,m,N)
% y = output sequence containing the circular shift
% x = input sequence of length <= N
% m = shift in samples
% N = size of circular buffer

if length(x) > N
 error('N must be >= length of x')
end
x = [x zeros(1,N-length(x))];
nx = [0:N-1]; 
ny = mod(nx-m,N);  % apply shift to sample indexes
y = x(ny+1);       % indexes of Matlab vectors must start from 1