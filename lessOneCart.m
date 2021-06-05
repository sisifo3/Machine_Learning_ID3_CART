function[VectEntropy] = lessOneCart()%data1)


data1 = readtable('data1.csv');
data1(:,1) = [];
data1 = table2array(data1);



%n = 1;


%EntropyS = 0.940;

len = size(data1,2);
VectEntropy = zeros(1,len-1);


for i = 1 : len-1
    entropy = oneRunCart(i,data1);
    VectEntropy(1,i) = entropy; 
end

%disp(VectEntropy)
end