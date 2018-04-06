function zero = bisection(f, a, b)
  c = (a + b) / 2;
  fa = f(a);
  fb = f(b);
  fc = f(c);
  if (abs(fa * fc) < 1)
    zero = c;
  elseif (fa * fc < 0)
    zero = bisection(f, a, c);
  elseif (fb * fc < 0)
    zero = bisection(f, c, b);
  else  
    zero = "DNE";
  end
end

% bisection method in matlab
% PARAMETERS: FUNCTION, INTERVAL START, INTERVAL END
% sample input: bisection(@(x) 1 / x - atan(x), 0 + 0.00001, pi / 2 - 0.00001)
