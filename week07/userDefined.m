a = [1 2 0; -2 -3 -4];
aT= matxTranspose(a)


function out =matxTranspose(x)
    [num_row, num_col]=size(x);
    newX=zeros(num_col,num_row);

    for i=1:num_col
        for j=1:num_row
            newX(i,j)=x(j,i);
        end
    end
    out =newX;
end

