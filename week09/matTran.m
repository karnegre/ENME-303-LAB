%Exercise 1: Matrix Transpose-Part 2
function [out_X] = matTran(in_X,in_NewX,col,row)
    for i=1:col
        for j=1:row
            in_NewX(i,j)=in_X(j,i);
        end
    end
out_X= in_NewX;
end