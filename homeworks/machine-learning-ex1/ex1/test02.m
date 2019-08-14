clear
close all;

data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% mu(1) = mean(X(:,1));
% sigma(1) = std(X(:,1));
% X_norm(:,1) = (X(:,1)-mu(1))/sigma(1);
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
X_norm = X;
for i = 1:size(X,2)
    mu(i) = mean(X(:,i));
    sigma(i) = std(X(:,i));
    X_norm(:,i) = (X(:,i)-mu(i))/sigma(i);
end
