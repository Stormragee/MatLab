N = 10; % liczba wierszy
M = 10; % liczba kolumn 

A = zeros(N*M);

for i = 1 : (N*M)
A(i,1) = 1;
A(1,i) = 1;
A(N*M,i) = 1;
A(i,N*M) = 1;
end


plot(A)