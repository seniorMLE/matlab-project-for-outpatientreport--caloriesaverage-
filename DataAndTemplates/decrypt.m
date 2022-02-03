% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE! 
function decrypted_message = decrypt(e,L,message)
if e == 1
    decrypt1 = char(message(1));    
    decrypt2 = char(message(length(message)));
    decrypted_message = append(decrypt1,decrypt2);    
elseif e == 2
    message = message + 5;
    decrypted_message = char(message);
end