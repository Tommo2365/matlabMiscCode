
% create a single figure with multiple plots

subFig1 = subplot(2,1,1);               % creats a [x,y] array for which plots can be 'stitched' too. where (n,n,1) is possition 1                 
scatter(x, y);                          % scatter x and y data
grid on;                                % turn grid lines on subplot                   
hold on
title('Chart Title');                   % add chart title to plot '1'
xlabel('x / {\it units}');              % xaxis lable on plot '1'
ylabel('y / {\it units}' );             % yaxis lable on plot '1'
    
   
% sub plot vs time
subFig2 = subplot(2,1,2);               % (n,n,2) is possition 2
scatter(x, y);                          % scatter x and y data
grid on;                                % turn grid lines on subplot
title('Chart Title');                   % add chart title to plot '2'
xlabel('x / {\it units}');              % x axis lable on plot '1'
ylabel('y / {\it units}');              % y axis lable on plot '1'

%%%%%%%%%%%%%%%%% possition vairbals work fomr left to right such that subplot(3,2,5):
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      [0 0 0
%                                       0 1 0]

% hence the plot would be in possition 5 of the [3,2] array