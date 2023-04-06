function questao2_2()
    printf("\nCOMEÇO QUESTÃO 2.2\n")
    A = store_question2_system();
    solution = met_gauss_seidel(A);
    printf("Soluções do sistema pelo método iterativo de gauss seidel: \n")
    for j = 1: columns(solution)
        printf("\nx%d=%e", j, solution(j));
    end #j
    printf("\nO Sistema converge, pois possui determinante %e, que é bem menor que 1.", det(A(:, 1:rows(A))))
    printf("\nFIM QUESTÃO 2.2\n")
end #function

# Método direto otimizado para valores não nulos