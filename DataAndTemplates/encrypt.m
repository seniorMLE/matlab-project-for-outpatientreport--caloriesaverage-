% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE! 
function encrypted_message = encrypt(e,L,message)
if e == 1
    randomstr = char(randi([97 122],1,L));
    encrypted_message = insertAfter(message,message(1),randomstr);
elseif e == 2
    message = message-5;
    encrypted_message = char(message);
end
