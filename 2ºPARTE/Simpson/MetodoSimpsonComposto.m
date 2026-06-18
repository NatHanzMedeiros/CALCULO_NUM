clear all; clc;

% 1. DEFINIÇÃO DA FUNÇÃO DO EXEMPLO
f = @(x) tan(x);

% 2. OS 3 PONTOS DO GRÁFICO DA IMAGEM
x1 = 0;          % Limite inferior
x5 = pi/4;       % Limite superior

% 3. CÁLCULO DO PASSO H (Exatamente a fórmula que está no topo do quadro!)
h = (x5 - x1) / 4;

% Calculando os pontos intermediários pulando de h em h
x2 = x1 + h;
x3 = x1 + 2*h;
x4 = x1 + 3*h;

% 4. CÁLCULO DAS ALTURAS (y1, y2, y3)
y1 = f(x1);   % f(x1)
y2 = f(x2);   % f(x2)
y3 = f(x3);   % f(x3)
y4 = f(x4);   % f(x3)
y5 = f(x5);   % f(x3)

% 5. A FÓRMULA DO RODAPÉ DO VÍDEO
% I = (h/3) * [ f(x1) + 4*f(x2) + f(x3) ]
area_total = (h/3) * (y1 + 4*y2 + 2*y3 + 4*y4 + y5);

% 6. EXIBIÇÃO DOS RESULTADOS ESTILO QUADRO
fprintf('--- Regra de Simpson 1/3 Simples ---\n');
fprintf('Valor de h: %f\n', h);
fprintf('f(x1) = %f\n', y1);
fprintf('f(x2) = %f\n', y2);
fprintf('f(x3) = %f\n', y3);
fprintf('f(x4) = %f\n', y4);
fprintf('f(x5) = %f\n', y5);
fprintf('\nResultado da Integral I: %.4f\n', area_total);
