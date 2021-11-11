from sympy import *

var('x')

examp1 = x*sqrt(x**2 + 2*x + 4)
examp2 = sin(x)**5 * cos(x)**2

print(latex(examp1))
print('\\\\')
print(latex(examp2))
