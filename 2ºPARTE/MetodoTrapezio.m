% 1. DEFINIÇÃO DA FUNÇÃO ANÔNIMA (Seu Novo Caso)
f = @(x) cos(x);

% 2. INTERVALO E PARÂMETROS FORNECIDOS
a = 0;
b = pi/2;

% 3. CÁLCULO DO PASSO H
h = b - a; % Largura total do intervalo (pi/2 - 0 = pi/2)

% 4. CÁLCULO DAS ALTURAS Y
y1 = f(a); % cos(0) = 1
y2 = f(b); % cos(pi/2) = 0

% 5. APLICAÇÃO DA FÓRMULA DO TRAPÉZIO
% I = (h / 2) * (y1 + y2)
I = (h / 2) * (y1 + y2);

% 6. EXIBIÇÃO DOS RESULTADOS
fprintf('Regra do Trapezio Simples\n');
fprintf('Valor de y1 (cos(0)):    %f\n', y1);
fprintf('Valor de y2 (cos(pi/2)): %f\n', y2);
fprintf('Resultado aproximado da Integral I: %.4f\n', I);
