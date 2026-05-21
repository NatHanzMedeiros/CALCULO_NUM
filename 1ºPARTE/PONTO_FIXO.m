  g = @(x)-sqrt(x+2);
  x0 = 1;
  erro = 1;
  tolerancia = 0.000001;
  i = 0;

    while(erro > tolerancia)

      x = g(x0);
      erro = abs(x-x0);
      x0 = x;
      i = i+1;

    end
fprintf('Raiz aproximada: %f\n', x);
fprintf('Iterações: %d\n', i);
