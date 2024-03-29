function zero = bisection(f, a, b)
  c = (a + b) / 2;
  fa = f(a);
  fb = f(b);
  fc = f(c);
  % state threshold for error reduction
  if (abs(fa * fc) < 0.00001)
    zero = c;
  elseif (fa * fc < 0)
    zero = bisection(f, a, c);
  elseif (fb * fc < 0)
    zero = bisection(f, c, b);
  else  
    zero = "DNE";
  end
end

% Bisection method implemenatation in Matlab
% PARAMETERS: FUNCTION, INTERVAL START, INTERVAL END
% sample input: bisection(@(x) 1 / x - atan(x), 0 + 0.00001, pi / 2 - 0.00001)
