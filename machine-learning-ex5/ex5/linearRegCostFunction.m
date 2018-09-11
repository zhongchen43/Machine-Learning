function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Compute the cost function
    J = 1/2/m*((X*theta-y)'*(X*theta-y));
    
% Compute the unregularized gradient for linear regression 
    grad = 1/m*X'*(X*theta-y);
    
    % Compute the regularized gradient
    temp = theta;
    temp(1) = 0; % Because we do not add anything for j = 0
    grad = grad + lambda/m*temp;
    
    % Compute the regularized cost function
    J = J + lambda/2/m*temp'*temp;










% =========================================================================

grad = grad(:);

end
