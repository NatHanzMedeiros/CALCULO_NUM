clear all; close all; clc;

% 1. DADOS DO ENUNCIADO
f = @(x, y) y;       % Função da EDO
h = 0.5;             % Tamanho do passo
x = 0 : h : 1;       % Domínio: do x_inicial ao x_final
y = zeros(size(x));  % Prepara o vetor para armazenar os resultados
y(1) = 1;            % Condição inicial: y(0) = 1

for i = 2 : length(x)
    xn = x(i-1);
    yn = y(i-1);

    k1 = f(xn, yn);
    k2 = f(xn + h/2, yn + (h/2)*k1);
    k3 = f(xn + h/2, yn + (h/2)*k2);
    k4 = f(xn + h, yn + h*k3);

    y(i) = yn + (h/6) * (k1 + 2*k2 + 2*k3 + k4);
end

disp('O valor final aproximado é:');
disp(y(end));
