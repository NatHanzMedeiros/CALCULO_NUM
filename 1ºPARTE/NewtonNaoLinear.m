F = @(x,y) [x^2+y^2-1 ; y-x^2];
J = @(x,y) [2*x 2*y ; -2*x 1];

ERRO = 1;
TOLERANCIA = 0.00001;
X0 = [1;0];

while(ERRO > TOLERANCIA)
x = X0(1);
y = X0(2);
X = X0 - inv(J(x,y))*F(x,y);
ERRO = sum(abs(X-X0));
X0 = X;
end
X0

