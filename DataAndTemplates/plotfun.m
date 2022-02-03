% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function p =plotfun(vec)
forum = input('Enter the mathematical expression:','s');

grid = length(vec);
height_grid = round(grid/2);
grid_index = 1;
function output = fun1(vec)   
    delta = 10/vec;   
    subplot(height_grid, 2, grid_index);
    x = 0:delta:10;    
    equ = strcat(forum);        
    real_y = eval(equ);
    plot(x, real_y,'ro');       
    title('number of points = '+string(vec));
    output = vec;    
    grid_index = grid_index + 1;    
end

pp = arrayfun(@fun1, vec);
end


