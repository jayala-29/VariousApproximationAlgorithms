def lagrange_pol(p):
  ip = []
  for i in range(0, len(p)):
    next_c = 1
    for j in range(0, len(p)):
      if (i != j):
        next_c = next_c * 1 / (p[i][0] - p[j][0])
    ip.append(next_c)
  return ip

# Lagrange Polynomial Interpolation
# p_3(x) = 4x^3 + 35x^2 - 84x - 954
# (x, y): (5, 1); (-7, 23); (-6, -54); (0, -954)
print (newton_pol([(5,1), (-7, -23), (-6, -54), (0, -954)]))
