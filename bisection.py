import math as m

def evaluate(f, x0):
  x = x0
  return eval(f)
  
def bisection(f, a, b):
  c = (a + b) / 2
  fa = evaluate(f, a)
  fc = evaluate(f, c)
  if (abs(fa * fc) < 1):
    return c
  elif (fa * fc < 0):
    return bisection(f, a, c)
  elif (fa * fc < 0):
    return bisection(f, c, b)
  return "DNE"
  
# computes bisection on x^-1 - arctan(x) on the interval [0, pi/2]
print (bisection("(1 / x) - m.atan(x)", 0 + 0.000001, m.pi / 2 - 0.000001))
