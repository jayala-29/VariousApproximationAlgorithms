def newton_pol(p):
  ip = []
  ip.append(p[0][1])
  for k in range(1, len(p)):
    d = p[k][0] - p[k-1][0]
    u = ip[k - 1]
    for i in range(k - 2, -1, -1):
      u = u * (p[k][0] - p[i][0]) + ip[i]
      d = d * (p[k][0] - p[i][0])
    ip.append((p[k][1] - u) / d)
  return ip

# Newton Polynomial Interpolation
# p_3(x) = 4x^3 + 35x^2 - 84x - 954
# (x, y): (5, 1); (-7, 23); (-6, -54); (0, -954)
# takes in list of points and returns c_k coefficients
print (newton_pol([(5,1), (-7, -23), (-6, -54), (0, -954)]))
