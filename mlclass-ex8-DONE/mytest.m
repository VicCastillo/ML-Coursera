

myparms = [X(:) ; Theta(:)];
myX = reshape(myparms(1:num_movies*num_features), num_movies, num_features);
myTheta = reshape(myparms(num_movies*num_features+1:end), num_users, num_features);

myMat = zeros(num_movies, num_users);

% i iterates over movies i=(1:5)
% j iterates over users  j=(1:4)

%for i=(1:num_movies)
%    for j=(1:num_users)
%        myMat(i,j) = Theta(j,:) * X(i,:)';
%    endfor
%endfor


myMat = sum(sum(R.*(( (Theta(:,:) * X(:,:)')' .- Y).^2)))/2;



myX_grad = sum(sum(R.*( (Theta(:,:) * X(:,:)')' .- Y))) * Theta;




