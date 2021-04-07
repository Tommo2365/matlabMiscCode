%%%%%%%%%%%%%%%%%%%%% calculae beam width for SN5 in milimeters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Radius of lense
rLens = 9.625;

% Lens to internal field-stop distance 
deltaX = 0.527                          % xp0674 neds to be pushed towards lens by this much [mm]
distLensToFS = 46.618 - deltaX;


% Apperture size inside can
canApp = 0.6096;

% Size of chip
sizeChip0494 = 0.6;
sizeChipNew = 0.6;              % Change chip size here

% Beam angle entering and exiting can
theta = atand(rLens/distLensToFS)

% Distance from chip to internal apperture (can) ------- Approx 0.4mm for DX0494
chipToIntApp0494 = 0.4;         % Change this as this is an approximation only
chipToIntAppNew = 0.508;

% Trig
t0494 = chipToIntApp0494*tand(theta);
tNew = chipToIntAppNew*tand(theta);

% Calculate beam width
widthBeam0494 = 2*t0494 + canApp;
widthBeamNew = 2*tNew + canApp; 

% What percentage of the beam area is covering the chip area
areaBeamOnChipPercent0494 = ((sizeChip0494/widthBeam0494)^2)*100
areaBeamOnChipPercentNew = ((sizeChipNew/widthBeamNew)^2)*100

 

% Percentage difference between new and old bean width - How much  
 
diffrencePercentage = (areaBeamOnChipPercentNew/areaBeamOnChipPercent0494)*100

x = areaBeamOnChipPercent0494/areaBeamOnChipPercentNew

