# Pregunta 3. Preguntas de desarrollo.
ans = pnorm(q = 7, mean = 9, sd = 3, lower.tail = FALSE)
print(ans)

mu = c(6, 9)
A = t(c(1/2, 7/10))
mu_x = A %*% mu
print(mu_x)

sigma = matrix(c(8, -5, -5, 9), 2, 2, byrow = TRUE)
sigma_x = A %*% sigma %*% t(A)
print(sigma_x)

ans = pnorm(q = 6, mean = mu_x[1, 1], sd = sqrt(sigma_x[1, 1]))
print(ans)


mu = c(12, 10) + matrix(c(2, 8, 1, -4), 2, 2, byrow = TRUE) %*% solve(matrix(c(8, -5, -5, 9), 2, 2, byrow = TRUE)) %*% c(-0.3-6, 4-9)
print(t(c(20/100, 1)) %*% mu)
