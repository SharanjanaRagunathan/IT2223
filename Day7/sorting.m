arr = [64, 25, 12, 22, 11];
n = length(arr);


for i = 1:n-1
    minIndex = i;
    for j = i+1:n
        if arr(j) < arr(minIndex)
            minIndex = j;
        end
    end
    
    temp = arr(minIndex);
    arr(minIndex) = arr(i);
    arr(i) = temp;
end


disp('Sorted array using Selection Sort:');
disp(arr);
