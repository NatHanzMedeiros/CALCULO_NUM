% Dados do problema
P = 67500;
A = 1999;
n = 48;

% Função f(i)
f = @(i) A * ((1+i)^n - 1) / (i * (1+i)^n) - P;

% Derivada f'(i) - Simplificada para o cálculo
df = @(i) A * ( (1 - (1+i)^-n)/i^2 - (n*(1+i)^(-n-1))/i );

% Newton-Raphson
i_estimado = 0.01; % Chute inicial de 1%
tol = 1e-7;
erro = 1;

while erro > tol
    i_novo = i_estimado - f(i_estimado)/df(i_estimado);
    erro = abs(i_novo - i_estimado);
    i_estimado = i_novo;
end

fprintf('A taxa de juros encontrada é: %.4f%%\n', i_estimado * 100);
