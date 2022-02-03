% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function k = myevalueB(err)
k = 0;
fact = 1;
approx_e=1;
while abs(approx_e - exp(1)) > err
  k=k+1;
  fact = fact * (1/k);
  approx_e = approx_e + fact; 
  
end
end
