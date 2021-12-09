%You MUST save this function template by the name of the function aka
%rename this script gSeidel.m

function dummy_out = gSeidel(dummy_itr, dummy_augA,dummy_sDigit)

    %Create a BIG zero matrix for solutions (x1, x2, x3).
    %aka dummy_out will be a 4 row matrix of (# of iteration col)
    % ex: col 1 will be iteration 1, row 1 is x1, row 2 is x2...
    dummy_out = zeros(4, dummy_itr);  
    
    %Initial guess for Gauss-seidel is ? (WORK NEEDED)
    x1=;
    x2=;
    x3=;
    
    %Loop through all iterations (WORK NEEDED)
    for i= 1:?
        %Solution equations for Gauss-siedel (WORK NEEDED)
        x1 = ;
        x2 = ;
        x3 = ;
        
        %Rounding your solutions to 4 sig figs
        round(x1, dummy_sDigit, 'significant');
        round(x2, dummy_sDigit, 'significant');
        round(x3, dummy_sDigit, 'significant');
        
        %Appending to the BIG dummy_out matrix (WORK NEEDED)
        % 1st row will display the iteration
        % 2nd row will display x1.. and so on until x3
        dummy_out(1,i) = i;
        dummy_out(2,i)= ?;
        %....

    end  
    %Once for-loop is complete aka we've iterated through our itr fully, we
    %return BIG dummy_out matrix back to main
end   