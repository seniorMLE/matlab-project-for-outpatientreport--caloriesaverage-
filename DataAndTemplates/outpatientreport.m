% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function output = outpatientreport(i)
data_myhospital =importdata('myhospital.mat');
data(100,1) = struct('LastName',[],'Sex',[],'Age',[],'Weight',[],'isSmoker',[]);

data(i,1) = struct('LastName',data_myhospital.LastName(i,1),'Sex',data_myhospital.Sex(i,1),'Age',{data_myhospital.Age(i,1)},'Weight',{data_myhospital.Weight(i,1)},'isSmoker',{data_myhospital.isSmoker(i,1)});
output = data(i,1);
p=randi([1,100],1,10);
x1 = struct('LastName',data_myhospital.LastName(p(1),1),'Sex',data_myhospital.Sex(p(1),1),'Age',{data_myhospital.Age(p(1),1)},'Weight',{data_myhospital.Weight(p(1),1)},'isSmoker',{data_myhospital.isSmoker(p(1),1)});
x2 = struct('LastName',data_myhospital.LastName(p(2),1),'Sex',data_myhospital.Sex(p(2),1),'Age',{data_myhospital.Age(p(2),1)},'Weight',{data_myhospital.Weight(p(2),1)},'isSmoker',{data_myhospital.isSmoker(p(2),1)});
x3 = struct('LastName',data_myhospital.LastName(p(3),1),'Sex',data_myhospital.Sex(p(3),1),'Age',{data_myhospital.Age(p(3),1)},'Weight',{data_myhospital.Weight(p(3),1)},'isSmoker',{data_myhospital.isSmoker(p(3),1)});
x4 = struct('LastName',data_myhospital.LastName(p(4),1),'Sex',data_myhospital.Sex(p(4),1),'Age',{data_myhospital.Age(p(4),1)},'Weight',{data_myhospital.Weight(p(4),1)},'isSmoker',{data_myhospital.isSmoker(p(4),1)});
x5 = struct('LastName',data_myhospital.LastName(p(5),1),'Sex',data_myhospital.Sex(p(5),1),'Age',{data_myhospital.Age(p(5),1)},'Weight',{data_myhospital.Weight(p(5),1)},'isSmoker',{data_myhospital.isSmoker(p(5),1)});
x6 = struct('LastName',data_myhospital.LastName(p(6),1),'Sex',data_myhospital.Sex(p(6),1),'Age',{data_myhospital.Age(p(6),1)},'Weight',{data_myhospital.Weight(p(6),1)},'isSmoker',{data_myhospital.isSmoker(p(6),1)});
x7 = struct('LastName',data_myhospital.LastName(p(7),1),'Sex',data_myhospital.Sex(p(7),1),'Age',{data_myhospital.Age(p(7),1)},'Weight',{data_myhospital.Weight(p(7),1)},'isSmoker',{data_myhospital.isSmoker(p(7),1)});
x8 = struct('LastName',data_myhospital.LastName(p(8),1),'Sex',data_myhospital.Sex(p(8),1),'Age',{data_myhospital.Age(p(8),1)},'Weight',{data_myhospital.Weight(p(8),1)},'isSmoker',{data_myhospital.isSmoker(p(8),1)});
x9 = struct('LastName',data_myhospital.LastName(p(9),1),'Sex',data_myhospital.Sex(p(9),1),'Age',{data_myhospital.Age(p(9),1)},'Weight',{data_myhospital.Weight(p(9),1)},'isSmoker',{data_myhospital.isSmoker(p(9),1)});
x10 = struct('LastName',data_myhospital.LastName(p(10),1),'Sex',data_myhospital.Sex(p(10),1),'Age',{data_myhospital.Age(p(10),1)},'Weight',{data_myhospital.Weight(p(10),1)},'isSmoker',{data_myhospital.isSmoker(p(10),1)});

disp(x1.LastName+" "+x1.Sex+" "+x1.Age+" "+x1.Weight+" "+x1.isSmoker);
disp(x2.LastName+" "+x2.Sex+" "+x2.Age+" "+x2.Weight+" "+x2.isSmoker);
disp(x3.LastName+" "+x3.Sex+" "+x3.Age+" "+x3.Weight+" "+x3.isSmoker);
disp(x4.LastName+" "+x4.Sex+" "+x4.Age+" "+x4.Weight+" "+x4.isSmoker);
disp(x5.LastName+" "+x5.Sex+" "+x5.Age+" "+x5.Weight+" "+x5.isSmoker);
disp(x6.LastName+" "+x6.Sex+" "+x6.Age+" "+x6.Weight+" "+x6.isSmoker);
disp(x7.LastName+" "+x7.Sex+" "+x7.Age+" "+x7.Weight+" "+x7.isSmoker);
disp(x8.LastName+" "+x8.Sex+" "+x8.Age+" "+x8.Weight+" "+x8.isSmoker);
disp(x9.LastName+" "+x9.Sex+" "+x9.Age+" "+x9.Weight+" "+x9.isSmoker);
disp(x10.LastName+" "+x10.Sex+" "+x10.Age+" "+x10.Weight+" "+x10.isSmoker);

x11 = [];
x22 = [];
g11 = {};
g22 = {};
if x1.isSmoker == 0 
    x11(end+1) = [x1.Weight];
    g11{end+1} = 'No';
elseif x1.isSmoker == 1
    x22(end+1) = [x1.Weight];
    g22{end+1} = 'Yes';
end   

if x2.isSmoker == 0
    x11(end+1) = [x2.Weight];
    g11{end+1} = 'No';
elseif x2.isSmoker == 1
    x22(end+1) = [x2.Weight];
    g22{end+1} = 'Yes';
end   

if x3.isSmoker == 0
    x11(end+1) = [x3.Weight];
    g11{end+1} = 'No';
elseif x3.isSmoker == 1
    x22(end+1) = [x3.Weight];
    g22{end+1} = 'Yes';
end   
if x4.isSmoker == 0
    x11(end+1) = [x4.Weight];
    g11{end+1} = 'No';
elseif x4.isSmoker == 1
    x22(end+1) = [x4.Weight];
    g22{end+1} = 'Yes';
end   
if x5.isSmoker == 0
    x11(end+1) = [x5.Weight];
    g11{end+1} = 'No';
elseif x5.isSmoker == 1
    x22(end+1) = [x5.Weight];
    g22{end+1} = 'Yes';
end   
if x6.isSmoker == 0
    x11(end+1) = [x6.Weight];
    g11{end+1} = 'No';
elseif x6.isSmoker == 1
    x22(end+1) = [x6.Weight];
    g22{end+1} = 'Yes';
end   
if x7.isSmoker == 0
    x11(end+1) = [x7.Weight];
    g11{end+1} = 'No';
elseif x7.isSmoker == 1
    x22(end+1) = [x7.Weight];
    g22{end+1} = 'Yes';
end   
if x8.isSmoker == 0
    x11(end+1) = [x8.Weight];
    g11{end+1} = 'No';
elseif x8.isSmoker == 1
    x22(end+1) = [x8.Weight];
    g22{end+1} = 'Yes';
end   
if x9.isSmoker == 0
    x11(end+1) = [x9.Weight];
    g11{end+1} = 'No';
elseif x9.isSmoker == 1
    x22(end+1) = [x9.Weight];
    g22{end+1} = 'Yes';
end   
if x10.isSmoker == 0
    x11(end+1) = [x10.Weight];
    g11{end+1} = 'No';
elseif x10.isSmoker == 1
    x22(end+1) = [x10.Weight];
    g22{end+1} = 'Yes';
end   

x11 = x11';
x22 = x22';
g11 = g11';
g22 = g22';
x = [x11; x22];
g = [g11; g22];
boxplot(x,g);
xlabel('isSmoker?');
ylabel('Weight(Kg)');



