clc;
clear;

% Setting x as symbolic variable
syms x;

% Input Section
y = input('Enter non-linear equation: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
e = input('Tolerable error: ');

count = 0;

% Finding Functional Values
fa = double(subs(y, x, a));
fb = double(subs(y, x, b));

% Checking whether root is bracketed
if fa * fb > 0

    disp('Given initial values do not bracket the root.');

else

    fprintf('\n\n\t\t a\t\t\t b\t\t\t c\t\t\t f(c)\n');
    fprintf('-------------------------------------------------------------\n');

    while true

        % Calculate midpoint
        c = (a + b) / 2;

        % Calculate function value at midpoint
        fc = double(subs(y, x, c));

        count = count + 1;

        % Display iteration
        fprintf('%d\t\t%f\t%f\t%f\t%f\n', ...
            count, a, b, c, fc);

        % Check error
        if abs(fc) <= e
            break;
        end

        % Update interval
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end

    end

    % Final result
    fprintf('\nRoot is: %f\n', c);
    fprintf('Iteration count: %d\n', count);

end