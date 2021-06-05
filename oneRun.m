function[EntropyS] = oneRun(n,EntropyS,data1)

%{
data1 = readtable('data1.csv');
data1(:,1) = [];
data1 = table2array(data1);
%}

% n = 4;

% EntropyS = 0.940;

unique1 = uniqueValues(n,data1);
len = length(unique1);
VecEntropy = zeros(len,1);
TotalExamples = zeros(len,1);

for i = 1 : len
    a = unique1{i,1};
    
    [lenYes,lenNo] = countYesNo(a,n,data1);
    
    [entropy] = getEntropy(lenYes,lenNo);

    VecEntropy(i,1) = entropy;
    TotalExamples(i,1) = lenYes + lenNo;
        
end

EntropyS = Gain(VecEntropy,TotalExamples,EntropyS,data1);

%disp(VecEntropy)

end