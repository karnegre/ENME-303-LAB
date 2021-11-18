%ENME 303 Lab
%Author: Karla Negrete
%Lab Lecture 11 Exercises

%% imread() Example

peppers = imread("peppers.jfif");
image(peppers)

%% imwrite() Example
%creates a 150-by-150 matrix of random pixel value (1 channel- B&W)
A = rand(150);
%Outputs this randomized matrix of pixel values 
% to an image in my working folder
imwrite(A,'ImageCreated.png')

%% imshow() Example