fibonacci  = function(n = 100) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(1)
  } else if (n == 2) {
    return(1)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

Matrix_To_Vector = function(Matrix=NULL, Inferior = TRUE) {
    n = nrow(Matrix)
    Row = NULL
    Column = NULL
    Pos_Vector = NULL

    Vector = c()
    if (Inferior) {
        for (j in 1:(n)) {
       for (i in 1:(n)) {
            if (j<i) {
                Vector = append(Vector, Matrix[i,j])
                Row = append(Row, i)
                Column = append(Column, j)
                Pos_Vector = append(Pos_Vector, (j-1)*n+i-j+2-fibonacci(2+j))
                }
            }
        }
    } else {
       for (i in 1:(n)) {
        for (j in 1:(n)) {
            if (j>i) {
                Vector = append(Vector, Matrix[i,j])
                Row = append(Row, i)
                Column = append(Column, j)
                Pos_Vector = append(Pos_Vector, (j-1)*n+i-j+2-fibonacci(2+j))
        }
      }
    }
  }

    return(list(Vector = Vector, Positions = data.frame(Row, Column, Pos_Vector, Vector)))
}

Matrix = matrix(1:16, 4)

Matrix_To_Vector(Matrix, Inferior = TRUE)

