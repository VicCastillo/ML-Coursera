
my_test_X = [ones(m, 1) X];
my_a2 = [ones(m, 1) sigmoid(my_test_X *  Theta1')];
my_a3 = sigmoid(my_a2 * Theta2');

[my_prob, my_p] = max(sigmoid(my_a2 * Theta2'),[],2);


[p, ip] = max(my_probs,[],2);

function [my_all_theta, my_new_X] = my_test(X, y, num_labels, lambda)
%
m = size(X, 1);
n = size(X, 2);
%
my_all_theta = zeros(num_labels, n + 1);
my_test_X = [ones(m, 1) X];


%try [my_J, my_grad] = lrCostFunction(my_all_theta(1,:), my_new_X, y, lambda);
% temp = sigmoid(my_new_X * my_all_theta(1,:)');

end
