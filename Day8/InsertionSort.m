arr = [64, 34, 25, 12, 22, 11, 90];

n = length(arr);
tic;

for i = 2:n
    key = arr(i);
    j = i - 1;

    while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end

    arr(j + 1) = key;
end

elapsed_time = toc;
disp(arr);
fprintf("Elapsed time: %f seconds\n", elapsed_time);