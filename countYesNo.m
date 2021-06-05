function[lenYes,lenNo] = countYesNo(a,n,data1)
%this function help us to found 
%the number of Yes and No depending of 
%variable a

%{
data1 = readtable('data1.csv');
data1(:,1) = [];
data1 = table2array(data1);
cellValues = {'Cloudy'; 'Rainy';'Sunny'};
a = cellValues{2,1}; 
%}
%disp(a)
%disp(data1)
Index = find(contains(data1(:,n),a));
%disp(Index)
data2 = data1(Index,:);

%disp()

IndexYes = find(contains(data2(:,end),'Yes'));
IndexNo = find(contains(data2(:,end),'No'));

%disp(IndexYes)
%disp(IndexNo)

lenYes = length(IndexYes);
lenNo = length(IndexNo);

%disp(lenYes)
%disp(lenNo)

end