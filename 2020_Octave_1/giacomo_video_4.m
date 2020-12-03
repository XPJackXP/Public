# MySecondScritp..
# MySecond.mat

clear all
close all
# display(Another Matrix Computation Exercise')

% Create a 5x7 matrix with random numbers between 0 and 1 
A = rand(5,7) 
% Create a random integer number between 1 and MAX (e.g. 36)
n = randi(36)

% Create a matrix 6x4 with random integer number between 1 and MAX (e.g. 50)
B = randi(50, 6, 4)

% Extract third column
col = B(:, 3)
% Extract second row
row = B(2, :)
% All elements of the matrix (equivalent simply to B)
B(:,:)

% Extract single element of the matrix (e.g. row 4 and col 3)
el = B(4, 3)
% Extract all elements of row 3 and 4 and column 2 and 3
Q = B(3:4, 2:3)

% Cancel all elements of row 3 and 5 and column 3 and 4
% Save first original
O = B
B(3:5, 3:4) = 0

% Save the results in file
  save('MySecond.mat', 'B', 'O')

% Load the results from file
  load('MySecond.mat')



