function[entropy] = getEntropy(a,b)
%In this function we will calculate the entropy value.
% b : numbers of No
% a : numbers of Yes
% c : total of numbers 

c = a + b;

%disp('values of a b')
%disp(a)
%disp(b)
%disp(c)

entropy = -(a/c)*log2(a/c) - (b/c)*log2(b/c);

entropy(isnan(entropy))=0;

%disp(entropy)
end