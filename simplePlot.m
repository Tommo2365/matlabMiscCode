% make a plot
fig = figure;               % define fig name as 'fig' 
scatter(xAxis, yAxis);      % Scatter x and y-data
grid on;                    % turn grid lines ON
title(['Title']);           % chart title
xlabel('x / {\it unit}');   % xaxis label
ylabel('y / {\it ºunit}');  % yaxis label
legend();                   % add legend
xlim([0 n]);                % define xlimits          
ylim([0 n])                 % define xlimits  
    
    
% add text to plot
annotation(fig,'textbox',...
    [0.850852466225819 0.197951711165462 0.0878477282003988 0.138248844263924],...  % possition
    'String',{'Text:', variable},...                                                % 'enter text here', add a viariable if applicable
    'FitBoxToText','on',...                                                         % fit text box to size
    'FontWeight','bold',... 
    'FontSize',9);
