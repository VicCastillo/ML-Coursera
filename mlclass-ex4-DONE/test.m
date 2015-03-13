%just for testing


K = size(Theta2,1);
X = [ones(m, 1) X];

i=1;
a2 = [1 sigmoid(X(i,:) * Theta1')];
hx = sigmoid(a2 * Theta2');
y_truth=[1:10]==y(i);

J=0;
J -= log(hx) * y_truth;
J -= log(1 - hx) * (1 - y_truth); 
J /=m;
