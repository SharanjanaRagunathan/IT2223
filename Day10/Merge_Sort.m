function sortedArray = mergeSort(arr)
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    mid = floor(length(arr)/2);
    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));
    
    sortedArray = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) < right(1)
            merged = [merged, left(1)];
            left(1) = [];
        else
            merged = [merged, right(1)];
            right(1) = [];
        end
    end
    merged = [merged, left, right];
end

% Example usage
arr = [8, 3, 5, 1, 7, 2];
sortedArr = mergeSort(arr);
disp(sortedArr);
