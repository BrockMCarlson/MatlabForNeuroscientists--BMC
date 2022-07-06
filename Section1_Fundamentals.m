%% Chapter 2 - Matlab tutorial

sin(0)
sin(pi/2)
sin(3/2*pi)

% Operations are dependent on desired accuracy
log(2.7183) %ans should be 1.0007
format long
log(2.7183) % Ans should be 1.000006684913988
format short 
log(2.7183) % ans should be 1.0000

%verify x*y = exp(log(x) + log(y))
x = 5;
y = 7;
x*y %#ok<*NOPTS>
format short
exp(log(x) + log(y))
2^500
%note that e stands for 10^y
2e3
2*10^3
ans+ans
ans
2^1000 %not at numerical limit
2^10000 % at numerical limit (Inf) output
a = [1 2 3];
b = [2 2 2; 3 3 3];
c = eye(5)
d = ones(6,7)
e = rand(8) %rand from uniform distrib 0:n:1
f = randn(9) %random matrix - with u = 0 and var = 1
who % see wich variables are in your workspace
whos % return additional information regarding size, bytes, and class
cd('C:\Users\Brock\Documents\MATLAB\formattedDataOutputs\MATLAB for neurosci outputs')
save my_workspace 
clear all
load my_workspace
who
size(a)
length(a)
size(e)
length(e) % Length returns the largest dimension of a matrix

%Lets create vectors
thisiscool = 4:18
thisiscooltoo = 4:2:18
linspace(1,5,5)
logspace(1,5,5) % these return vector of (a,b,n) a = start b = end, n = number of evenly spaced elements
linspace(1,5,32)
logspace(1,5,15) %DAMN 

%% Exercise 2.2
clear
A = [7 5; 2 3; 1 8];
A(2,1) = 2*A(2,1); % this returns [7 5; 4 3; 1 8]
B = A'; % B = [7 4 1; 5 3 8]
B(5) % This counts column-wise. So it counts down each column before moving to the next!
B(1,3) %BOOM!! Its the same as B(5)

%% Exercise 2.3
v1 = linspace(0,1,7)
v2 = 0:0.1:1
length(v2)
size(v2) %v2 has 11 elements in one row 1x11
v2(3) % = 0.2

%% Matrix algebra (AKA dot notation)