%Author: Karla Negrete
%UMBC ID: MQ31578
%Course: ENME 303
%Description: Lab Assignment 2 Solutions
clc, clear, close all 


%% Exercise 1: Leap year

    year = input('Enter a year: ');

    if (mod(year, 400) == 0)
        fprintf('%d is a leap year \n', year)
    elseif (mod(year, 4) == 0) & (mod(year, 100)~=0)
        fprintf('%d is a leap year \n', year)
    else
        fprintf('%d is not a leap year \n', year)
    end
    
 %% Exercise 2: Tea Party
    fprintf('Tea options are white, green, oolong, black, and herbal\n')
    teatime= input('Would you like a cup of tea? Y or N\n', 's')
    
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
   
%% Exercise 3: Tea Party Switch
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