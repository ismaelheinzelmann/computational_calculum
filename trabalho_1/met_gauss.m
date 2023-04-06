function X = met_gauss(A)
    #OTIMIZAÇÃO NA SEÇÃO 2.1.6 CASO ZERO NÃO OPERE
    n = rows(A);
    ops_with_float = 0;

    # triangulação
    for k = 1:n-1
        for i = k+1:n
            aux = A(i,k)/A(k,k);
            ops_with_float++;
            for j = k:n+1
                ops_with_float++;
                A(i,j) = A(i,j) - aux*A(k,j);
            endfor
        endfor
    endfor
    # fim triangulação

    # retrossubstituição
    solution = [];
    solution(n) = A(n, n+1) / A(n, n);
    for i = n-1 : -1 :1
        soma = 0;
        for j = i + 1: n
            soma += A(i, j) * solution(j);
            ops_with_float += 2*n - 1;# operations = 2n - 1 (n = dimensão da matriz) n multiplicações e n - 1 para cada linha por coluna de multiplicação (
        endfor
        ops_with_float += 2;
        solution(i) = (A(i, n + 1) - soma)/ A(i, i);
    endfor
    # fim retrossubstituição
    printf("Operações com ponto flutuante: %d\n", ops_with_float)
    X = solution;
endfunction