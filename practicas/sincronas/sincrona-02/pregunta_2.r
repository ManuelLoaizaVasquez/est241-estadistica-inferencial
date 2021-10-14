# Pregunta 2.b

f_x <- function(x) {
  return(2 * (abs(x) + abs(x + 0.5)) / 9)
}

expected_value_x <- function(is_square) {
  result = 0
  for (x in -1 : 1) {
    p = f_x(x)
    add = x * p
    if (is_square) {
      add = add * x
    }
    result = result + add
  }
  return(result)
}

f_y <- function(y) {
  return((4 + y) / 9)
}

expected_value_y <- function(is_square) {
  result = 0
  for (y in 0 : 1) {
    p = f_y(y)
    add = y * p
    if (is_square) {
      add = add * y
    }
    result = result + add
  }
  return(result)
}

f_x_y <- function(x, y) {
  return(2 * abs(2 * x + y) / 18)
}

expected_value_x_y <- function() {
  result = 0
  for (x in -1 : 1) {
    for (y in 0 : 1) {
      result = result + x * y * f_x_y(x, y)
    }
  }
  return(result)
}

var_x = expected_value_x(TRUE) - expected_value_x(FALSE)^2
var_y = expected_value_y(TRUE) - expected_value_y(FALSE)^2
cov_x_y = expected_value_x_y() - expected_value_x(FALSE) * expected_value_y(FALSE)
rho = cov_x_y / (sqrt(var_x * var_y))
print(rho)