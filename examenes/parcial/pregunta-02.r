# Pregunta 2. Preguntas de opcion multiple. 
# Sea X el ingreso mensual de los trabajadores de una empresa en miles de soles
# X ~ exp(beta = 0.2)
beta = 0.2
probs = c(pexp(q = 2.5, rate = beta), pexp(q = 6, rate = beta) - pexp(q = 2.5, rate = beta), pexp(q = 6, rate = beta, lower.tail = FALSE))

# 2.a
ans = 0
for (y in 1 : 20) {
  ans = ans + y * 1000 * dbinom(x = y, size = 20, prob = probs[1])
}
print(ans)

# 2.b
ans = 0
n = 20 # Numero de trabajadores de la muestra
a = 10
for (c in 0 : 4) {
  b = 10 - c
  cnt = c(a, b, c)
  ans = ans + dmultinom(x = cnt, size = n, prob = probs)
}
print(ans)

# 2.c
ans = 0
bonos = t(c(1000, 700, 100))
for (a in 0 : n) {
  for (b in 0 : (n - a)) {
    c = n - a - b
    if (c < 0) break
    cnt = c(a, b, c)
    ans = ans + (bonos %*% cnt)[1] * dmultinom(x = cnt, size = n, prob = probs)
  }
}
print(ans)
