function questao2_1()
    printf("\nCOMEÇO QUESTÃO 2.1\n")
    A = store_question2_system();
    solution = met_gauss(A);
    printf("\nSoluções do sistema pelo método de eliminação gaussiana: \n");
    for j = 1: columns(solution)
        printf("\nx%d=%e", j, solution(j));
    end #j
    max_error = max_rest(A, solution');

    printf("\nResíduo máximo: %e\n", max_error);

    printf("\nFIM QUESTÃO 2.1\n")
end #function