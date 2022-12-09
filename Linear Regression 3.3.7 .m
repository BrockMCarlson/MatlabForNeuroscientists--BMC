% 3.3.7 Linear Regression
% In collaboration with Swarat Kulkarni
% 12/9/22

% pg 90, regress function has unclear dimensions

x = [-.454,6.68,6.93,7.43,4.58,6.40,6.04,0.846,3.49,4.53]';
y = [-4.10,46.8,69.0,74.7,47.5,63.8,61.6,7.76,0.739,45.3]';



[b,bint] = regress(y,x);