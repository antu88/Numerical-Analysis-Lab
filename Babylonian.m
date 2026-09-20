clc;
clear;
% Input the number
n = input('Enter a positive number: ');

% Initial guess (can be n/2 or 1)
x = n / 2;

% Set tolerance level
tolerance = 1e-6;

% Babylonian iteration
while true
    x_new = 0.5 * (x + n / x);   					       % Update using Babylonian formula

    % Check if difference is within tolerance
    if abs(x_new - x) < tolerance
        break;
    end

    x = x_new;   										% Update estimate
end

% Display result
fprintf('The square root of %.4f is approximately %.6f\n', n, x_new);
