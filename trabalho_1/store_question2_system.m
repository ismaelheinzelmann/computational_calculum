function ret = store_question2_system()
    n1 = 10;
    n2 = 20;
    n3 = 40;
    A = [];
    
    # i=1 # 3x(i) + 2x(i+5) = 2 
    A(1,1) = 3; A(1,6) = 2; A(1, n3) = 2;

    # for i=2:n1-1 # x(i-1) +3x(i)+ 2x(i+5) = -2 
    for i = 2:n1-1
        A(i, i-1) = 1; A(i, i) = 3; A(i, i+5) = 2;A(i, n3 + 1) = -2;
    end #i

    # for i=n1:n2-1 # 2x(i-4)+ 4x(i)+ x(i+1) = 3
    for i = n1: n2 -1
        A(i, i-4) = 2; A(i, i) = 4; A(i, i+1) = 1;A(i, n3 + 1) = 3;
    end #i

    # i=n2# x(i-1) + 6x(i)- x(i+4) =-2 
    A(n2, n2-1) = 1; A(n2, n2) = 6; A(n2, n2+4) = -1;A(n2, n3 + 1) = -2;

    # for i=n2+1:n3-1 # x(i-3) + x(i-1) +7*x(i)+2x(i+1) = 5 
    for i = n2 + 1: n3 - 1
        A(i, i-3) = 1; A(i,i-1) = 1; A(i, i) = 7; A(i, i+1) = 2; A(i, n3 + 1) = 5;
    end #i
    
    # i=n3 # 2x(i-10)+ 5x(i) = -5 
    A(n3, n3-10) = 2; A(n3, n3) = 5; A(n3, n3 + 1) = -5;
    ret = A;

end #function