%Exercise 2: Matrix Determinant Checker- Part 2
function detFunc(in_X, row, col)
if (isequal(row,col))
    if isequal(col,1)
        Detmath=in_X;
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    elseif isequal(col,2)
        Detmath=(in_X(1,1)*in_X(2,2))-(in_X(1,2)*in_X(2,1));
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    elseif isequal(col,3)
        Detmath=(in_X(1,1)*in_X(2,2)*in_X(3,3))+(in_X(1,2)*in_X(2,3)*in_X(3,1))+(in_X(1,3)*in_X(2,1)*in_X(3,2))-(in_X(1,3)*in_X(2,2)*in_X(3,1))-(in_X(1,2)*in_X(2,1)*in_X(3,3))-(in_X(1,1)*in_X(2,3)*in_X(3,2));
        fprintf('The determinant of matrix X is:\n')
        disp(Detmath)
    end
    if isequal(round(det(in_X)),Detmath)
        fprintf('Your determinant math is correct\n')
    else
        fprintf('Check your equations\n')
    end
else
        fprintf('Matrix must be square\n')
end
end
