% intervalo para diminuir o erro (o tamanho do seu passo)
h = 1e-4;

% definindo domínio (vai de 0 até 1, dando passos do tamanho h)
x = [0 : h : 1];

% cria um vetor y para armazenar os valores
y = zeros(size(x));

% primeira posição vale 1 (CONDIÇÃO INICIAL: sabemos que e^0 = 1)
y(1) = 1;

% calcula a soma da derivação por limite
for i = 2 : size(y,2)
   % Aqui está a mágica: y_novo = y_atual + h * derivada
   % Como a derivada é o próprio y, fica: y(i) = y(i-1) + h * y(i-1)
   % Que fatorado vira: y(i) = y(i-1) * (1 + h)
   y(i) = y(i-1) * (1+h);
   final = y(i);
endfor
