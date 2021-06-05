function[Gini] = Gini(VectEntropy,TotalExamples,data1)

len = length(VectEntropy);


d = size(data1,1);

%disp(d)
%disp(VectEntropy)
%disp(TotalExamples)

Gini = 0;
for i = 1 : len
    Gini1 = Gini + (TotalExamples(i,1)/d)*VectEntropy(i,1);
    Gini = Gini1;
end


end



