function questao2_3()
    printf("\nCOMEÇO QUESTÃO 2.3\n")
    A = store_2_3_system();
    solution = met_gauss_optimized(A);
    printf("Soluções do sistema pelo método direto otimizado de gauss: \n")
    for j = 1: columns(solution)
        printf("\nx%d=%e", j, solution(j));
    end #j
    printf("\nResíduo máximo: %e", max_rest(A, solution'));

    printf("\nFIM QUESTÃO 2.3\n")
end #function

# Método direto otimizado para valores não nulos