function [] = llessOne()

data1 = readtable('data1.csv');
data1(:,1) = [];
data1 = table2array(data1);



data2 = data1([5 6 7 9 10 11 13],[2 3 4 5]);
disp(data2)

EntropyS= -(6/7)*log2(6/7) - (1/7)*log2(1/7);

%EntropyS = 0;
disp(EntropyS)
VectEntropy = lessOne(data2,EntropyS);

disp(VectEntropy)

%E= -(2/5)*log2 (2/5) - (3/5)*log2(3/5);
%disp(E)
end