N = 100; % liczba wierszy
M = 100; % liczba kolumn         k = i + (j -1) * N;
%Żeby przy zmodyfikować te warunki na brzegach na górze jest 20 natomiast co będzie jeżeli na 1/3 długości 200/
%Zmodyfikować kwadrotowa pusta przestrzeń w środku nie ma tych
%materiałów na zewnatrz 20 w srodku otwor 100stopni
% Tworzenie macierzy A
A = speye(N*M);

for i = 2 : (N-1)
    for j = 2 : (M-1)
        k = i + (j -1) * N;
        k1 = (i -1) + (j -1) * N;
        k2 = (i + 1)+ (j -1) * N;
        k3 = i + (j - 1 - 1) * N;
        k4 = i + (j -1 + 1) * N;
        A(k,k) =4;
        A(k,k1)= -1;
        A(k,k2) = -1;
        A(k,k3) = -1;
        A(k,k4) = -1;
    end
end
b = zeros(N*M,1);
for i = 1:N 
    j = 1;
    k = i + (j - 1) * N;
    b(k) = 80; % temperatura z lewej
    j = M;
    k = i + (j - 1) * N;
    b(k) = 20; % temperatura z prawej
end
for j = 1:M 
    i = 1;
    k = i + (j - 1) * N;
    b(k) = 80; % temperatura z lewej
    i = M;
    k = i + (j - 1) * N;
    b(k) = 20; % temperatura z prawej
end
T = A\b;
%T = lsqr(A,b);
T = reshape(T,N,M);

contour(T,20:3:80,'ShowText','on');
axis ij;
%axis equal;
grid on;
grid minor;