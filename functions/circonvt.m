function y = circonvt(x1,x2,N)
% N-point circular convolution between x1 and x2: (time-domain)
% -------------------------------------------------------------
% [y] = circonvt(x1,x2,N)
% y = output sequence containing the circular convolution
% x1 = input sequence of length N1 <= N
% x2 = input sequence of length N2 <= N
% N = size of circular buffer
% Method: y(n) = sum (x1(m)*x2((n-m) mod N))

if length(x1) > N
error('N must be >= the length of x1')
end
if length(x2) > N
error('N must be >= the length of x2')
end

x1=[x1 zeros(1,N-length(x1))];
x2=[x2 zeros(1,N-length(x2))];
m = [0:1:N-1]; 
x2n = x2(mod(-m,N)+1);   % obtain the sequence x2n[n]=x2[-n]

for n = 0:N-1
  y(n+1)=x1 * cirshftt(x2n,n,N).';
end
