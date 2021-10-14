# Pregunta 4
# 4.a
x = 3.200
result = pnorm(q = 1.908, mean = 0.5 + 0.42 * x, sd = 1, lower.tail = FALSE)
print(result)

# 4.b
# E[Y] E[E[Y | X = x]] = E[0.45 + 0.42 X] = 0.45 + 0.42 E[x] = 0.45 + 0.42 * alpha / beta
# X ~ Gamma(alpha, beta)
alpha = 3
beta = 1
result = 0.5 + 0.42 * alpha / beta
print(result)