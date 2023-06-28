%1

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Iteratively compute the value of y
for n = 1:x
    y = y * (2*n) / (2*n+1);
end

end

%2

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

end

%3

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

end

%4

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

end

%5

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

end

%6

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

% Print relative error
fprintf('Relative error of the numerical approximation is %f \n', relError)

end

%7 

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

% Print relative error
fprintf('Relative error of the numerical approximation is %f \n', relError)

% Generate a plot of the numerical approximation 
plot(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Numerical Approximation of Mathematical Expression');

end

%8

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

% Print relative error
fprintf('Relative error of the numerical approximation is %f \n', relError)

% Generate a plot of the numerical approximation 
plot(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Numerical Approximation of Mathematical Expression');

% Generate a log-log plot of the numerical approximation
loglog(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Log-Log Plot of Numerical Approximation of Mathematical Expression');

end

%9

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

% Print relative error
fprintf('Relative error of the numerical approximation is %f \n', relError)

% Generate a plot of the numerical approximation 
plot(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Numerical Approximation of Mathematical Expression');

% Generate a log-log plot of the numerical approximation
loglog(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Log-Log Plot of Numerical Approximation of Mathematical Expression');

% Calculate the coefficient of precision of the numerical approximation
coeffOfPrecision = 1 / relError;

end

%10 

function y = fromTheGroundUp(x)
%FROMTHEGROUNDUP A function designed to determine the numerical
%approximation of a mathematical expression
%   x is the input variable

% Initialize y as a starting value
y = 1;

% Compute the value of y
for n = 1:x
    denom = 2*n*(2*n+1);
    y = y * (2*n) / denom;
end

% Calculate the absolute error of the numerical approximation
absError = abs(1 - y);

% Print absolute error
fprintf('Absolute error of the numerical approximation is %f \n', absError)

% Calculate the relative error of the numerical approximation
relError = absError / abs(1);

% Print relative error
fprintf('Relative error of the numerical approximation is %f \n', relError)

% Generate a plot of the numerical approximation 
plot(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Numerical Approximation of Mathematical Expression');

% Generate a log-log plot of the numerical approximation
loglog(x, y)
ylabel('Numerical Approximation');
xlabel('Input Variable');
title('Log-Log Plot of Numerical Approximation of Mathematical Expression');

% Calculate the coefficient of precision of the numerical approximation
coeffOfPrecision = 1 / relError;

% Print coefficient of precision
fprintf('Coefficient of precision of the numerical approximation is %f \n', coeffOfPrecision)

end