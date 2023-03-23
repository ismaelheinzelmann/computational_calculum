function questao1(n)

printf("\nCOMEÇO QUESTÃO 1\n")

format long;

double_precision = double(n);   
single_precision = single(double_precision);  

erro_p = abs((double(single_precision) - double_precision)/double_precision)*100;

printf("\n Em Single  = %.20f\n",single_precision)
printf("\n Em Double = %.20f\n",double_precision)
printf("\n Erro percentual = %.20f%%\n", erro_p)

printf("\nFIM QUESTÃO 1\n")
end #function