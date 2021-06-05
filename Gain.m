function [EntropyS] = Gain(VectEntropy,TotalExamples,EntropyS,data1)

len = length(VectEntropy);


d = size(data1,1);

%disp(d)
%disp(VectEntropy)
%disp(TotalExamples)
Gaini = 0;
for i = 1 : len
     %Gain = EntropyS - ((TotalExamples(i,1)/d)*VectEntropy(i,1));
     %EntropyS = Gain;
     Gaini1 = Gaini + (TotalExamples(i,1)/d)*VectEntropy(i,1);
     Gaini = Gaini1;
end

%disp(Gain)

end
