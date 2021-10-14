# Pregunta 1

f_x <- function(x) {
  result <- 0.006 + 0.0068 * x * x
}

# 1.a
ans = dbinom(x = 3, size = 5, prob = 0.58)
print(ans)

# 1.b
ans = f_x(5) * dbinom(x = 3, size = 5, prob = 0.58)
print(ans)

# 1.c
ans = 0
for (cnt in 4 : 7) {
  ans = ans + f_x(cnt) * dbinom(x = 4, size = cnt, prob = 0.58)
}
print(ans)