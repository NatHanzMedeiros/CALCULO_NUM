f=@(x) x^8-2;
a=1 ;
b=1,1;
erro = 1;
tolerancia = 0.1;
i = 0;

  while(erro>tolerancia)
    x=(a+b)/2;

  if (f(a) * f(x) < 0)
    b=x;

  else
    a=x;
  end

    erro = abs(f(x));
    i=i+1;

  end

fprintf('Raiz aproximada: %f\n', x);
fprintf('Iterações: %d\n', i);

