  g = @(x) 4*cos(x)-exp(x);
  df = @(x) -4*sin(x)-exp(x);
  x0 = -1;
  erro = 1;
  tolerancia = 0.0000001;
  i = 0;

    while(erro > tolerancia)

      x = x0-g(x0)/df(x0);
      erro = abs(x-x0);
      x0 = x;
      i = i+1;

    end
fprintf('Raiz aproximada: %f\n', x);
fprintf('Iterações: %d\n', i);