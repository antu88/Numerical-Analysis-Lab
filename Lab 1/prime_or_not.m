clc;
clear;
n = input('Enter a number: ');									% Input number
% Handle special cases
if n <= 1
    fprintf('%d is NOT a prime number.\n', n);
    return;
end
isPrime = true;   % Assume number is prime
for i = 2:sqrt(n)						           	% Check divisors from 2 to sqrt(n)
    if mod(n, i) == 0
        isPrime = false;
        break;
    end
end
% Display result
if isPrime
    fprintf('%d is a PRIME number.\n', n);
else
    fprintf('%d is NOT a prime number.\n', n);
end
