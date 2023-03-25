% matrix = store_question2_system();
matrix = [3 -1 -1 1; 1 3 1 5; 1 -1 2 2];
solution = met_gauss_seidel(matrix);
disp(solution);

solution = met_gauss(matrix);
disp(solution);