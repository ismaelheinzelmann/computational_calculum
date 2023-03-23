function X = met_gauss(A)
    n = rows(A);

    # pivotação inicial
    for k = 1: n-1
        [A_max, pos] = max(abs(A(k: n, k)));

        LK = A(k, :); # valor preservado da original
        A(k,:) = A(pos + k - 1,:);

        A(pos + k - 1, :) = LK;
    endfor
    # fim pivotacao inicial

    # triangulação
    for k = 1:n-1
    # neste caso deve-se escolher a melhor linha para eliminação
    # melhor linha será a que tem o maior valor em sua diagonal principal
    # acumulando menores erros de arredondamento
        for i = k+1:n
            aux = A(i,k)/A(k,k);
            for j = k:n+1
                A(i,j) = A(i,j) - aux*A(k,j);
            endfor
        endfor
    endfor
    # fim triangulação

    # retrossubstituição
    solution = [];
    solution(n) = A(n, n+1) / A(n, n);
    for i = n-1 : -1 :1
        sum = 0;
        for j = i + 1: n

            sum += A(i, j) * solution(j);

        endfor


        solution(i) = (A(i, n + 1) - sum)/ A(i, i);

    endfor
    # fim retrossubstituição
    
    X = solution;
endfunction