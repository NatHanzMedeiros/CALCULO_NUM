clear all; clc;

% 1. DEFINIÇÃO DA FUNÇÃO DO EXEMPLO
f = @(x) cos(x);

% 2. OS 3 PONTOS DO GRÁFICO DA IMAGEM
x1 = 0;          % Limite inferior
x3 = pi/2;       % Limite superior
x2 = (x1+x3)/2;  % Ponto médio exato (no gráfico é o x2)

% 3. CÁLCULO DO PASSO H (Exatamente a fórmula que está no topo do quadro!)
h = (x3 - x1) / 2;

% 4. CÁLCULO DAS ALTURAS (y1, y2, y3)
y1 = f(x1);   % f(x1)
y2 = f(x2);   % f(x2)
y3 = f(x3);   % f(x3)

% 5. A FÓRMULA DO RODAPÉ DO VÍDEO
% I = (h/3) * [ f(x1) + 4*f(x2) + f(x3) ]
area_total = (h/3) * (y1 + 4*y2 + y3);

% 6. EXIBIÇÃO DOS RESULTADOS ESTILO QUADRO
fprintf('--- Regra de Simpson 1/3 Simples ---\n');
fprintf('Valor de h: %f\n', h);
fprintf('f(x1) = %f\n', y1);
fprintf('f(x2) = %f\n', y2);
fprintf('f(x3) = %f\n', y3);
fprintf('\nResultado da Integral I: %.4f\n', area_total);
