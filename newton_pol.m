function p = newton_pol(x,y)
  c = zeros(size(x,2), 1);
  c(1) = y(1);
  for k=1:(size(x,2)-1)
      d = x(k+1) - x(k);
      u = c(k);
      for i=(k-2):-1:0
          u = u * (x(k+1) - x(i+1)) + c(i+1);
          d = d * (x(k+1) - x(i+1));
      end
      c(k+1) = (y(k+1) - u) / d;
  end
  p = zeros(1, size(x,2));
  dm = p;
  dm(size(x,2) - 1) = 1;
  dm(size(x,2)) = -x(1);
  p(size(x,2)) = c(1);
  for k=2:size(c)
      if (k > 2)
          dm = conv(dm, [1, -x(k-1)]);
      end
      while(size(dm,2) ~= size(x,2))
          dm(1) = [];
      end
      p = p + c(k) * dm;
  end
end

% INPUT: newton_pol([x1 ... xn], [y1 ... yn])
% OUTPUT: polynomial coefficients using Divided Differences (Newton's method for polynomials)
