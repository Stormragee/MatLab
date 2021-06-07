
N = 5;
A = rand(N);
S = A;
% Dla podanego rozmiaru losowa macierz i ile razy można przypadkow uzyskac
% przesuwa o 1 o 1 o 1 o 1 
% sprawdzanie wyznaczników czy poprawnie się przemieszcza
for i = 1:N-1
    S = circshift(S,[0,1]);
    %if det(A)) ~= det(S) Przez procesy obliczeniowe wynik ten jest
    %fałszem! det(A) - det(S) = 5.551115123125783e-17
    if floor(det(A)) ~= floor(det(S))
        disp("Sa rozne!")
        det(A)
        det(S)
        det(A) - det(S)
        break
    end
end
