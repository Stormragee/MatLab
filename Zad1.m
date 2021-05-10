%N = 7;
%Macierz trójdiagonalna

function A = Zad1(N)


D1 = 4 * eye(N);
D2 =  diag(- 2 *ones(N-1,1),1);
D3 =  diag(- 2 *ones(N-1,1),-1);
D4 =  diag(ones(N-2,1),2);
D5 =  diag(ones(N-2,1),-2);

A =D1+D2+D3+D4+D5;

   