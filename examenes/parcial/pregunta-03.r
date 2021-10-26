# Pregunta 1. Preguntas de desarrollo.
# Problema 1.a.
ans = 0.1 * dbinom(x = 0, size = 4, prob = 0.8)
for (k in 1 : 4) {
  ans = ans + 3 * k * k * dbinom(x = k, size = 4, prob = 0.8) / 100
}
print(ans)

# Problema 1.b.
ans = 0
for (k in 1 : 4) {
  ans = ans + 3 * (k^3) / 100
}
print(ans)
