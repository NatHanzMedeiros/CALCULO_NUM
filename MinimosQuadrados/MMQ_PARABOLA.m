x = [-0.95, -0.65, -0.35, -0.05, 0.25, 0.55, 0.85, 1.15, 1.45];
y = [-2.57, -2.01, -1.61, -1.42, -1.33, -1.33, -1.48, -1.85, -2.38];
n = length(x);

#FORMA MATRICIAL
#PARA CHEGAR NA FORMA MATRICIAL SE FAZ DERIVADA DE PARA CADA CONSTANTE ELEVADO A 2
A = [sum(x.^4) sum(x.^3) sum(x.^2);
     sum(x.^3) sum(x.^2) sum(x);
     sum(x.^2) sum(x)    n];



B = [sum(x.^2 .* y); sum(x .* y); sum(y)];

#RESOLUÇÃO
coef = inv(A)*B;
a = coef(1);
b = coef(2);
c = coef(3);


plot(x, y, '*', x, a*x.^2 + b*x + c, '-')
