% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function frequent_words = wordscount(n)
result_index = n;
FID = fopen('TheTortoiseAndTheHare.txt');
data = textscan(FID,'%s');
fclose(FID);
stringData = string(data{:});
[u,i,j] = unique(stringData);
n = histcounts(j,1:max(j)+1);
[n,idx] = sort(n, 'descend');

descend_index = n'; %the number of most frequenct words to least frequenct words
descend_words = u(idx); %freuenct workd that most frequent number is descend
all_words = [descend_index descend_words];

[uu, ii, jj] = unique(descend_index, 'stable');
descend_index = uu;
descend_words = descend_words(ii);
frequent_words1 = [descend_index(1:result_index,1),descend_words(1:result_index,1)];

[uu, ii, jj] = unique(descend_index, 'sorted');
descend_index = uu;
descend_words = descend_words(ii);
frequent_words2 = [descend_index(1:result_index,1),descend_words(1:result_index,1)];

frequent_words_all =[frequent_words1; frequent_words2];

disp(result_index+" most frequent words and "+result_index+"least frequent words are as follows");
disp(frequent_words_all);
disp("All the frequent words are as follows");
disp(all_words);


