import math as m

def evaluate(f, x0):
  x = x0
  return eval(f)
  
# f, f', starting point, # of iterations
def newton(f, fp, x0, it):
  for i in range (0, it):
    x1 = x0 - evaluate(f, x0) / evaluate(fp, x0)
    x0 = x1
    print (x0, evaluate(f, x0))
  
# newton's method for e^x - 1.5 - arctan(x) starting at x0 = -7 for 8 iterations
print (newton("m.exp(x) - 1.5 - m.atan(x)", "m.exp(x) - 1 / (1 + x * x)", -7, 8))
