function [jVal, gradient] = costFunction(theta)
  jVal = (theta(1)-5)^2 + (theta(2)-5)^2; %code to compute J(theta)
  gradient = zeros(2, 1); %code to compute partial derivative of J(theta)
  gradient(1) = 2*(theta(1) - 5); %code to compute partial derivative w.r.t J(theta(1))
  gradient(2) = 2*(theta(2) - 5); %code to compute partial derivative w.r.t J(theta(2))
endfunction;

options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = zeros(2, 1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);