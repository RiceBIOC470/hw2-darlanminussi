function mm = meannonan_modified(matrix)

mm = [];

for i = 1:size(matrix, 2)
    mm(1,i) = mean(matrix(~isnan(matrix(:,i))));    
end






