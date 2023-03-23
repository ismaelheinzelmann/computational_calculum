function ret = store_question2_system()
    n1 = 10;
    n2 = 20;
    n3 = 40;
    A = [];
    
    # i=1 # 3x(i) + 2x(i+5) = 2 
    for j = 1: n3
        if j == 1
            A(1, j) = 3;
        elseif j == 6
            A(1, j) = 2;
        else
            A(1, j) = 0;
        endif
        A(1, n3 + 1) = 2;
    end #j

    # for i=2:n1-1 # x(i-1) +3x(i)+ 2x(i+5) = -2 
    for i = 2:n1-1
        for j = 1: n3
            if j == i - 1
                A(i, j) = 1;
            elseif j == i
                A(i, j) = 3;
            elseif j == i + 1
                A(i, j) = 2;
            else
                A(i, j) = 0;
            endif
        end #j
        A(i, n3 + 1) = -2;
    end #i

    # for i=n1:n2-1 # 2x(i-4)+ 4x(i)+ x(i+1) = 3 
    for i = n1: n2 -1
        for j = 1: n3
            if j == i - 4
                A(i, j) = 2;
            elseif j == i
                A(i, j) = 4;
            elseif j == i + 1
                A(i, j) = 1;
            else
                A(i, j) = 0;
            endif
        end #j
        A(i, n3 + 1) = 3;
    end #i

    # i=n2# x(i-1) + 6x(i)- x(i+4) =-2 
    for j = 1: n3
        if j == i - 1
            A(n2, j) = 1;
        elseif j == i
            A(n2, j) = 6;
        elseif j == i + 4
            A(n2, j) = -1;
        else
            A(n2, j) = 0;
        endif
        A(n2, n3 + 1) = -2;
    end #j

    # for i=n2+1:n3-1 # x(i-3) + x(i-1) +7*x(i)+2x(i+1) = 5 
    for i = n2 + 1: n3
        for j = 1: n3 + 1
            if j == i - 3
                A(i, j) = 1;
            elseif j == i - 1
                A(i, j) = 1;
            elseif j == i
                A(i, j) = 7;
            elseif j == i + 1
                A(i, j) = 2;
            else
                A(i, j) = 0;
            endif
        end #j
        A(i, n3 + 1) = 5;
    end #i
    
    # i=n3 # 2x(i-10)+ 5x(i) = -5 
    for j = 1: n3
        if j == i - 10
            A(n3, j) = 2;
        elseif j == i
            A(n3, j) = 5;
        else
            A(n3, j) = 0;
        endif
        A(n3, n3 + 1) = -5;
    end #j
    ret = A;
    

end #function