x = [1; 2; 3; 4];
y = [2; 2.8; 4.1; 4.9];
n = length(x);

#FORMA MATRICIAL
#PARA CHEGAR NA FORMA MATRICIAL SE FAZ DERIVADA DE PARA CADA CONSTANTE ELEVADO A 2
A = [n, sum(x); sum(x), sum(x.^2)];
B = [sum(y); sum(x.*y)];


#RESOLUÇÃO
coef = inv(A)*B;
b = coef(1);
a = coef(2);


plot(x, y, '*', x, a*x + b, '-')
