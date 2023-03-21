# Sistemas lineares por eliminação gaussiana
output_precision(16)
A = [0.448 0.832 0.193 ;
    0.421 0.784 -0.207 ;
    -0.319 0.884 0.279]
B = [1; 0; 0]

# Solução por eliminação gaussiana
X = met_gauss(A, B)

for x = rows(A) : 1
    erro = abs(sum(A(x, :) * X') - B(x, 1))
    print(erro)
endfor


# verificar algoritmo de thomas