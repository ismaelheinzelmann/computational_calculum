function questao2_2()
    printf("\nCOMEÇO QUESTÃO 2.2\n")
    A = store_question2_system();
    solution = met_gauss_seidel(A);
    printf("Soluções do sistema pelo método iterativo de gauss seidel: \n")
    for j = 1: columns(solution)
        printf("\nx%d=%e", j, solution(j));
    end #j
    #perguntar como calcular erro

    printf("\nFIM QUESTÃO 2.2\n")
end #function

# Método direto otimizado para valores não nulos