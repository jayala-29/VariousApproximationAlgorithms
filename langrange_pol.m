function p = lagrange_pol(x, y)
  c = zeros(1, size(x,2));
  for i=1:size(x,2)
      next_c = 1;
      for j=1:size(x,2)
          if (i ~= j)
             next_c = next_c * 1 / (x(i) - x(j)); 
          end
      end
      c(i) = next_c;
  end
  p = zeros(1, size(x,2));
  lp = p;
  lp(size(x,2)-1) = 1;
  check = 0;
  for i=1:size(x,2)
      for j=1:size(x,2)
         if (i ~= j)
            if (check == 0)
                lp(size(x,2)) = -x(j);
                check = 1;
            else
                lp = conv(lp, [1, -x(j)]); 
            end
         end
      end
      while(size(lp,2) ~= size(x,2))
          lp(1) = [];
      end
      p = p + c(i) * y(i) * lp;
      check = 0;
      lp(1:size(x,2)) = 0;
      lp(size(x,2)-1) = 1;
  end
end

% INPUT: newton_pol([x1 ... xn], [y1 ... yn])
% OUTPUT: polynomial coefficients using Lagrange method
