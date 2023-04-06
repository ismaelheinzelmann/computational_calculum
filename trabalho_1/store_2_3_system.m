function x = store_2_3_system()
    n1 = 10;
    n2 = 40;
    A = [];
    A(1,1) = 1; A(1, 2) = 1; A(1, 41) = -1;

    for i = 2: n1
        A(i, i-1) = 1; A(i,i) = 2; A(i, i+1) = 1; A(i, 41) = 1;
    end #i

    for i = n1 + 1: n2 - 1
        A(i, i-1) = 1; A(i, i) = 3; A(i, i + 1) = 1; A(i, 41) = 2;
    end #i

    A(n2, n2 -1) = 1; A(n2, n2) = 4; A(n2, n2 + 1) = 3;

    x = A;
end #function