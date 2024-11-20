% Clear the space
clear all;
clc;

% Define the equation
syms x1 x2;
f(x1, x2) = -cos(x1) * cos(x2) * exp(-(x1 - pi) ^ 2 - (x2 - pi) ^ 2);

% plot the contour plot
fcontour(f, 'Fill', 'on');
% To show the color bar next to the plot
colorbar
% For 3d plot //// I just coment it because it doesn't look good
% fsurf(f);
% To hold the plot so we can show the update of point on it
hold on

% The diviation of equation
gx = gradient(f);

% Initial point given by homework
% x = [0.75, -1.25];
% x = [0, 0];
x = [3.5, 3.5];

% Learing Rate (alpha)
% learningRate = SWC(x, f);
% learningRate = GOLD(x, f);
learningRate = BT(x, f);

% First compute of gradient with initial points
xResult = double(subs(gx(x(1, 1), x(1, 2)),{x1,x2},{x(1,1),x(1,2)}));

% Two empty list to save the points during the update
x1List = [x(1, 1)];
x2List = [x(1, 2)];

% for loop for update the points
for i = 1:1000
    
    % with GD formula update the points
    x(1, 1) = x(1,1) - (learningRate * xResult(1, 1));
    x(1, 2) = x(1,2) - (learningRate * xResult(2, 1));
    
    % Save the points inside the empty list for further use
    x1List = [x1List x(1, 1)]; %#ok
    x2List = [x2List x(1, 2)]; %#ok
    
    % With new points compute the gradient
    xResult = double(subs(gx(x(1, 1), x(1, 2)),{x1,x2},{x(1,1),x(1,2)}));
    
    % Break the iteration
    % Check if the points don't change more than 10e-4 and if so break
    errorAmountx1 = x1List(1, i)  - x(1, 1);
    errorAmountx2 = x2List(1, i)  - x(1, 2);
    if (errorAmountx1 < 10e-4 && errorAmountx2 < 10e-4)
        break
    end

    % Learing Rate (alpha)
    % learningRate = SWC(x, f);
    % learningRate = GOLD(x, f);
%     learningRate = BT(x, f);
    
    % Plot the point on contour 
%     plot(x(1, 1), x(1, 2), 'r-*');
%     title('Iteration = ', i )
%     pause(0.1)
end

% After finding the min point print out the results
disp('Iteration = ');
disp(i);
disp('Learning Rate = ');
disp(learningRate);
disp('The Min Point = ');
disp(x);
disp('Final x in equation : ')
fResult = double(subs(f(x(1,1), x(1,2)),{x1,x2},{x(1,1),x(1,2)}));
disp(fResult);
plot(x1List, x2List, 'r-*');