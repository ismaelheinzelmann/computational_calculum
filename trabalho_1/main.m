questao1(-60.06)
A = store_question2_system();
% for i = 1:rows(A)
%     for j = 1:columns(A)
%         printf("%d ", A(i,j));

%     end
%     printf("\n");
% end

solution = met_gauss(A);
for i = 1:columns(solution)
    printf("x%d = %.4f\t",i , solution(i));
end
#dividir o processo de trigonometração e pivotação do met_gauss