n = input("Enter an integer: ");

if n < 0
    disp('Enter a positive integer');
else
    f = factor(n);
    fprintf('Factorial of %d is %d\n', n, f);
end 

function fact = factor(n)
    fact = 1;
    for i=1:n
        fact = fact*i;
    end
end
