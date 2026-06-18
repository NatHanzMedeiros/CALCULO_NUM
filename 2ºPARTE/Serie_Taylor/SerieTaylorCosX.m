clear all; clc;

% 1. DEFINIÇÃO DOS PARÂMETROS
x_alvo = pi/4;  % O valor de x onde queremos estimar (pi/6 radianos = 30 graus)
termos = 4;     % Quantas voltas o somatório vai dar (de n = 0 até termos-iniciais)

% 2. INICIALIZAÇÃO DA SÉRIE
Aprox = 0;

% 3. LOOP BASEADO EXATAMENTE NA SUA FÓRMULA
for n = 0:termos
    % Sua fórmula do termo geral:
    numerador = ((-1)^n) * (x_alvo^(n + 1));
    denominador = factorial(n + 1);

    termo = numerador / denominador;

    % Acumula o valor
    Aprox = Aprox + termo;

    % Mostra o grau real do polinômio atual (2n+1)
    fprintf('Usando ate n = %d (Grau %d) -> Valor aproximado: %.6f\n', n, n+1, Aprox);
end

% 4. VALIDAÇÃO
valor_real = cos(x_alvo);
erro_absoluto = abs(valor_real - Aprox);

fprintf('\n-----------------------------------------\n');
fprintf('Valor Real do cos(pi/2): %.6f\n', valor_real);
fprintf('Erro Absoluto final:     %.6e\n', erro_absoluto);
