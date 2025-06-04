function sorted_arr = quickSort(arr)
    if numel(arr) <= 1
        sorted_arr = arr;
        return;
    end
    pivot = arr(floor(end/2));
    left = arr(arr < pivot);
    middle = arr(arr == pivot);
    right = arr(arr > pivot);
    
    sorted_arr = [quickSort(left), middle, quickSort(right)];
end

arr = [5, 2, 8, 1, 7];
sorted_arr = quickSort(arr);
disp(sorted_arr);

