V = 1:2:1000;
S = sum(V.^2);
f = @(N) sum((1:N).^2);
M =  1:20;
y = arrayfun(f,M);
b = bar(y);
b.FaceColor = "yellow";
b.EdgeColor = "red";
set(gca, 'YScale', 'log')