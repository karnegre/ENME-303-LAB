%Exercise 1: Matrix Transpose-Part 2
function [out_X] = matTran(in_X,in_NewX,col_X,row_X)
    for i=1:col_X
        for j=1:row_X
            in_NewX(i,j)=in_X(j,i);
        end
    end
out_X= in_NewX;
end