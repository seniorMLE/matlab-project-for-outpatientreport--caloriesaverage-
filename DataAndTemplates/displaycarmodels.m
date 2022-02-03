% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE !
function result = displaycarmodels()
cardata = importdata('cardata.mat');
Cylinders_str = string(cardata.Cylinders);
Horsepower_str = string(cardata.Horsepower);
Model_str = string(cardata.Model);
Origin_str = string(cardata.Origin);
Weight_str = string(cardata.Weight);

%dataset(406,1) = struct('Cylinders_str', Cylinders_str ,'Horsepower_str',Horsepower_str,'Model_str',Model_str,'Origin_str',Origin_str,'Weight_str',Weight_str);   
msg1 = "Choose number of cylinders";
opts1 = ["3","4","5","6","8"];
choice1 = menu(msg1, opts1);

number_of_cylinders = opts1(choice1); 
cylinders_index = find(Cylinders_str == number_of_cylinders);
selected_model = Model_str(cylinders_index, 1);

msg2 = "Choose the model";
opts2 = selected_model;
choice2 = menu(msg2,opts2);

number_of_models = opts2(choice2); 

Horsepower_index = find(Model_str == number_of_models);
selected_Weight = Weight_str(Horsepower_index, 1);
selected_origin = Origin_str(Horsepower_index, 1);
disp("Horsepower: "+Horsepower_index);
disp("Weight (Kg):"+selected_Weight);
disp("Origin:  "+selected_origin);






