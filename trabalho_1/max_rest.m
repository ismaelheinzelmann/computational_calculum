function ret = max_rest(A, solutions)
    max_error = 0;
    for i = 1:rows(A)
        result = A(i, 1:rows(A)) * solutions;
        error = double(result - A(i, columns(A)));
        if (abs(error) > max_error)
            max_error = abs(error);
        endif
    endfor
    ret = max_error;
end #function