function dummy_out = gSeidel(dummy_itr, dummy_augA,dummy_sDigit)
    dummy_out = zeros(4, dummy_itr);  %* initial matrix 
    x1=0;
    x2=0;
    x3=0;
    for i= 1:dummy_itr
        x1 = (dummy_augA(1, end) -dummy_augA(1,2)*x2 -dummy_augA(1,3)*x3)/dummy_augA(1,1);
        x2 = (dummy_augA(2, end) -dummy_augA(2,1)*x1 -dummy_augA(2,3)*x3)/dummy_augA(2,2);
        x3 = (dummy_augA(3, end) -dummy_augA(3,1)*x1 -dummy_augA(3,2)*x2)/dummy_augA(3,3);
        round(x1, dummy_sDigit, 'significant');
        round(x2, dummy_sDigit, 'significant');
        round(x3, dummy_sDigit, 'significant');
        dummy_out(1,i) = i;
        dummy_out(2,i) = x1;
        dummy_out(3,i) = x2;
        dummy_out(4,i) = x3;
    end  
end   