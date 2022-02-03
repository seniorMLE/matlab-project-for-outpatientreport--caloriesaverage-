% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!      
function average = caloriesaverage(i)
global INNER_SUM
if i >= 2000
    warndlg('the value of the calorie must be 0~2000 ','Warning');    
else    
    INNER_SUM(end+1) = i;
    disp(INNER_SUM);    
end
calc_sum = sum(INNER_SUM);    
if calc_sum >2000    
    opts = struct('WindowStyle','modal',... 
              'Interpreter','tex');
    f = warndlg('\color{blue} he/she has reached the recommended calories consumption for one day',...
             'Memory Warning', opts);    
    forum = input(' ','s');
    if forum == 'zero(0)'
        INNER_SUM = [];
        calc_sum = 0;
    end
else
    average = calc_sum/length(INNER_SUM);
    
end
end










