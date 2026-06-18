clear all; clc;

% 1. DEFINIÇÃO DOS PARÂMETROS
x_alvo = 1;  % O valor de x onde queremos estimar
termos = 5;     % Quantas voltas o somatório vai dar (de n = 0 até termos-iniciais)

% 2. INICIALIZAÇÃO DA SÉRIE
Aprox = 0;

% 3. LOOP BASEADO EXATAMENTE NA SUA FÓRMULA
for n = 0:termos
    % Sua fórmula do termo geral:
    numerador = ((1)^n) * (x_alvo^(n));
    denominador = factorial(n);

    termo = numerador / denominador;

    % Acumula o valor
    Aprox = Aprox + termo;

    % Mostra o grau real do polinômio atual (2n+1)
    fprintf('Usando ate n = %d (Grau %d) -> Valor aproximado: %.6f\n', n, n, Aprox);
end

% 4. VALIDAÇÃO
valor_real = exp(x_alvo);
erro_absoluto = abs(valor_real - Aprox);

fprintf('\n-----------------------------------------\n');
fprintf('Valor Real do exp(1): %.6f\n', valor_real);
fprintf('Erro Absoluto final:     %.6e\n', erro_absoluto);
