function X = met_gauss_seidel(A)
    s = zeros(1, rows(A));
    n = rows(A);
    dif = 1;
    relax = 0.7;
    i = 0;
    ops_with_float = 0;
    iterations = 0;

    while dif > 1e-6
        iterations++;
        new_x = zeros(1, rows(A));
        for i = 1:n
            soma = 0;
            for j = 1:n
                if j != i
                    ops_with_float ++;
                    soma += A(i, j) * s(1, j);
                endif
            end #j
            ops_with_float += 6; #1 sum, 2 diff, 2 multiplications, 1 division
            new_x(1, i) = ((1 - relax) * s(1, i)) + ((relax/A(i,i)) * (A(i, n + 1) - soma));
        end #i
        ops_with_float += n;
        dif = max(abs(new_x - s));
        s = new_x;
    endwhile
    printf("Operações com ponto flutuante: %d\n", ops_with_float);
    printf("Iterações: %d\n", iterations);
    printf("Resíduo máximo: %e\n", dif);
    X = s;
end #function