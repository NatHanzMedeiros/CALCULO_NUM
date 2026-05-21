f=@(x) x^2+2*x-2;
a=0 ;
b=1;
erro = 1;
tolerancia = 0.0001;
i = 0;

  while(erro>tolerancia)
    x=(a+b)/2;

  if (f(a) * f(x) < 0)
    b=x;

  else
    a=x;
  end

    erro = abs(b - a );
    i=i+1;

  end

fprintf('Raiz aproximada: %f\n', x);
fprintf('Iterações: %d\n', i);

