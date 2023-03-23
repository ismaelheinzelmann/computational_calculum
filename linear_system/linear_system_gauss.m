# Sistemas lineares por eliminação gaussiana

A = [0.448 0.832 0.193;
    0.421 0.784 -0.208 ;
    -0.319 0.884 0.279];
B = [1; 0; 0];

# Solução por eliminação gaussiana
X = met_gauss(A, B);
disp("Sistema Linear:")
disp([A B])
disp("Solução:")
disp(X)