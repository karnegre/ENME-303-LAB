function [out_X] = matxInverse(in_X,row_X,col_X)

if (isequal(row_X,col_X) && det(in_X)~=0)
    InvX=inv(in_X);
    if isequal(round(in_X*InvX),eye(row_X))
    fprintf('Correct\n')
    end
end
out_X=InvX;
end