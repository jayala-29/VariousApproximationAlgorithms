function newton(f, fp, x0, it)
  if (it == 0)
      return;
  end
  x1 = x0 - f(x0) / fp(x0);
  x0 = x1;
  fprintf('%d %d\n', x0, f(x0));
  newton(f, fp, x0, it - 1);
end

% Newton's method implementation in Matlab
% PARAMETERS: FUNCTION, DERIVATIVE OF FUNCTION, STARTING POINT, NUMBER OF ITERATIONS
% sample input: newton(@(x) exp(x) - 1.5 - atan(x), @(x) exp(x) - 1 / (1 + x^2), -7, 8)
