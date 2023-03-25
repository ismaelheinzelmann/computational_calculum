function X = met_gauss_seidel(A)
    s = zeros(1, rows(A));
    n = rows(A);
    dif = 1;
    relax = 0.85;
    i = 0;

    while dif > 1e-6
        new_x = zeros(1, rows(A));
        for i = 1:n
            soma = 0;
            for j = 1:n
                if j != i
                    soma += A(i, j) * s(1, j);
                endif
            end #j
            new_x(1, i) = ((1 - relax) * s(1, i)) + ((relax/A(i,i)) * (A(i, n + 1) - soma));
        end #i
        dif = max(abs(new_x - s));
        s = new_x;
    endwhile
    X = s;
end #function