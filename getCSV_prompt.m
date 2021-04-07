% prompt box title
dlgTitle = 'Input Vaule'; 

% prompt box cells
prompt = {'Input1', 'Input2', 'Input 3'}; %ect....

% input
bootInput = inputdlg(prompt);

% inputs as strings. Change to float or boolean where needed
input1 = string(bootInput{1}); 
input2 = string(bootInput{2}); 
input3 = string(bootInput{3}); 
