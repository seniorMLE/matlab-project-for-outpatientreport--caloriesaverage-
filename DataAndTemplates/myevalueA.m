% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function n = myevalueA(err)
n=0;
difference = 1;
e1 = 1 / exp(1);
while difference > err
    difference = abs(e1 - (1-1/n)^n);
    n = n + 1;    
end
n = n - 1;