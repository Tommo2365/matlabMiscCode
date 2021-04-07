
% add additional axis on same plot
fig = figure;                                           % create figure
yyaxis left;                                            % work on LHS yaxis
scatter(x, y);                                          % scatter data to said y and x axis
grid on;                                                % turn axis grid on
xlabel('x / {\it units}');                              % write x axis label                
ylabel('y / {\it units}' );                             % write LHS yaxis label
hold on;
yyaxis right;                                           % work on RHS yaxis
plot(x, y);                                             % scatter data to said y and x axis                    
ylabel('y / {\it units}');                              % write RHS yaxis label
