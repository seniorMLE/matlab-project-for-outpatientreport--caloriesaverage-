% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
%  
% INSERT YOUR CODE HERE!
function m = ecompare(input)
n1 = [];
n2 = [];
n1(end+1) = myevalueA(input(1));
n1(end+1) = myevalueA(input(2));
n1(end+1) = myevalueA(input(3));
n1(end+1) = myevalueA(input(4));
n1(end+1) = myevalueA(input(5));

n2(end+1) = myevalueB(input(1));
n2(end+1) = myevalueB(input(2));
n2(end+1) = myevalueB(input(3));
n2(end+1) = myevalueB(input(4));
n2(end+1) = myevalueB(input(5));

plot(input,n1,input,n2);
xlabel('errors');
ylabel('speed of approximations');


