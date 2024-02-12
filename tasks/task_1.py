import numpy as np

def fibonacci(n = 100):
    if n == 0:
       return 1
    elif n== 1:
        return 1
    else:
       return(fibonacci(n-1) + fibonacci(n-2))
    
s = 3
M = np.matrix([i + 1 for i in range(s**2)]).reshape(s,s).T

def Matrix_To_Vector(Matrix, Lower = True):
    n = Matrix.shape[0]
    Vector = []
    Row = []
    Column = []
    Pos_Vector = []
    if (Lower):
        for j in range(Matrix.shape[1]):
            for i in range(Matrix.shape[0]):
                if j<i:
                    Row.append(i)
                    Column.append(j)
                    Vector.append(Matrix[i,j])
                    Pos_Vector.append((j)*n+i-j+1-fibonacci(2+j))

    return dict(Vector = Vector, Rows = Row, Columns = Column, Positions = Pos_Vector)

print(Matrix_To_Vector(M))