arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

tic;
target=42;
left = 1;
right = length(arr);
index = -1;
found=false;

while left <= right
    mid = floor((left + right) / 2);
    if arr(mid) == target
        found = true;
        index  = mid;
        break;
    elseif arr(mid) < target
        left = mid + 1;
    else
        right = mid - 1;
    end
end

if found
    fprintf("target index: %d\n",index)
else
    fprintf("traget not found ");
end
runtime = toc;
fprintf("The running time: %f\n",runtime);


