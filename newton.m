function newton(f, fp, x0, it)
  for i=0:it-1
      x1 = x0 - f(x0) / fp(x0);
      x0 = x1;
      fprintf('%d %d\n', x0, f(x0));
  end
end

% Newton's method implementation in Matlab
% PARAMETERS: FUNCTION, DERIVATIVE OF FUNCTION, STARTING POINT, NUMBER OF ITERATIONS
% sample input: newton(@(x) exp(x) - 1.5 - atan(x), @(x) exp(x) - 1 / (1 + x^2), -7, 8)
