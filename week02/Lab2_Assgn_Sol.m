%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 2 Solutions...
%Refer to Week 2_ Assignment.pdf for Exercise details
%Assignment location: Lab 2 folder in Google Drive
%Updated: 2021.11.19 (KN)
clc, clear, close all 


%% Exercise 1: Leap year
    %User inputs
        year = input('Enter a year: ');
    % Checks if the year is divisible by 400
        if (mod(year, 400) == 0)
            fprintf('%d is a leap year \n', year)
    % Checks if the year is divisible by 4 BUT not divisble by 100
        elseif (mod(year, 4) == 0) & (mod(year, 100)~=0)
            fprintf('%d is a leap year \n', year)
        else
            fprintf('%d is not a leap year \n', year)
        end
    
 %% Exercise 2: Tea Party (if)
     %User inputs
        fprintf('Tea options are white, green, oolong, black, and herbal\n')
        teatime= input('Would you like a cup of tea? Y or N\n', 's')
     % If-else checking for teas and printing out
     %corresponding brew time
       if teatime == 'Y'
           tea = input('What kind of tea would you like?:\n ', 's');
       else 
           fprintf('Ok :( ')
       end

       if strcmp(tea,'white')||strcmp(tea,'green')
           fprintf('Brew the tea for 1-2 min\n')
       elseif strcmp(tea,'black')||strcmp(tea,'oolong')
           fprintf('Brew the tea for 2-3 min\n')
       else
           fprintf('Brew the tea for 3-6 min\n') 
       end
   
%% Exercise 3: Tea Party (switch)
    %Same as above except using switch
        fprintf('Tea options are white, green, oolong, black, and herbal\n')
            teatime= input('Would you like a cup of tea? Y or N\n', 's')

           if teatime == 'Y'
               tea = input('What kind of tea would you like?:\n ', 's');
           else 
               fprintf('Ok :( ')
           end

        switch tea
            case {'white','green'} 
                fprintf('Brew the tea for 1-2 min\n')
            case {'black','oolong'}
                fprintf('Brew the tea for 2-3 min\n')
            otherwise
                fprintf('Brew the tea for 3-6 min\n')
        end

    % % using number as cases
    %    fprintf('\n\n--- Tea problem is siwtch (number) ---\n')
    %    fprintf('Tea options:\n 1=white, 1=green, 3=oolong, 3=black, and 4=herbal\n')
    %    if teatime == 'Y'
    %        tea = input('What kind of tea would you like?:\n', 's');
    %    else 
    %        fprintf('Ok :( ')
    %    end
    % 
    % switch tea
    %     case 1 
    %         fprintf('Brew the tea for 1-2 min\n')
    %     case 2
    %         fprintf('Brew the tea for 2-3 min\n')
    %     otherwise
    %         fprintf('Brew the tea for 3-6 min\n')
    % end

