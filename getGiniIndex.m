function[GiniIndex] = getGiniIndex(a,b)
%In this function we will calculate the Gini Index.

% b : numbers of No
% a : numbers of Yes
% c : total of numbers 

%a = 2;
%b = 3;
%c = 5;
c =  a + b;

%disp('values of a b')
%disp(a)
%disp(b)
%disp(c)

GiniIndex = 1 -(a/c)^2 - (b/c)^2;

GiniIndex(isnan(GiniIndex))=0;

%disp(entropy)


end