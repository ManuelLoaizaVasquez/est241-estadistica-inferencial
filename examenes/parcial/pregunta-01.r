# Pregunta 1. Preguntas de opcion multiple.
# 1.a
p = ppois(10, lambda = 12, lower.tail = FALSE)
print(p)

# 1.b
print(dhyper(x = 3, m = 4, n = 4, k = 6))
print(phyper(q = 2, m = 4, n = 4, k = 6, lower.tail = FALSE))

# 1.c
x = 7
r = 3
p = 0.51
ans = 15 * ((1 - p)^(x - r)) * (p^r)
print(ans)
