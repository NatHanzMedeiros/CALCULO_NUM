% 1. DADOS DO ENUNCIADO
f = @(x, y) y;       % Função da EDO
h = 0.1;             % Tamanho do passo
x = 0 : h : 1;       % Domínio: vai do x_inicial até o x_final
y = zeros(size(x));  % Prepara o vetor y
y(1) = 1;            % Condição inicial: valor de y quando x é o inicial

% 2. O CORAÇÃO DO MÉTODO (O que você precisa decorar)
for i = 2 : length(x)
k1 = f(x(i-1), y(i-1));
% 3. Calcula a inclinação neste ponto médio com os valores estimados na metade do passo
k2 = f(x(i-1) + h/2, y(i-1) + (h/2) * k1)
% 4. Avança usando a inclinação do meio
y(i) = y(i-1) + h * k2;
end

% 3. RESPOSTA
y(end); % Imprime a resposta final
