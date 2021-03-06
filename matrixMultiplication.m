%% Matrix multiplication

p = [1 2; 3 4];
p2 = p + 2;

q = [2 1; 1 1];
m = p2 + q;


r = p2*q;
s = p2.*q;

% Scalar multiplication
A = [2 4 8; 1 7 3];
test1 = 5*A

% Matrix Multiplication
C = [1 2; 3 4];
D = [5 6; 7 8];

E = C*D
F = C.*D % this is "element-wise" (and most intuitive)

test = nan(5,3)
for i = 1:5 % my experiment has 5 trials
    for j = 1:3 %each trial has 3 presentations
        tic
        test(i,j) = toc;
    disp(test)
    i
    j
    smaile = 'smile';
    end
end





