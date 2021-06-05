function [un] = uniqueValues(n,data1)
%The unique function we help us to found 
% the unque values in a column cell.
% n : number of column 
% data1: The complete data. 

%{
n = 2;
data1 = readtable('data1.csv');
data1(:,1) = [];
data1 = table2array(data1);
%}


un = unique(data1(:,n));

end