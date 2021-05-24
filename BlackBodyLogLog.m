%------------------------------------------------------------------------%
%---------Black Body Radiation-------------------------------------------%
%------------------------------------------------------------------------%

clc;
close all;
clear all;

%------------------------------------------------------------------------------------------%

b = 2.89777196*10^-3;   % Constant of proportionality
c = 2.99792458*10^8;    % Speed of light in vaccum
h = 6.62607004*10.^-34; % Planck constant 
k = 1.38064852*10.^-23; % Boltzmann constant
T = [150 300 500 1000 2000 5778 10000]; % Temperatures in Kelvin
lam = (0:0.01:10000).*1e-6; 
K = sprintf('K');

figure(1)
for  i= 1:7
%-------------------------------Spectral Emissvity-----------------------------------------%

E1(:,i) = (((8*pi*h*c)./(lam.^5)).*(1./((exp((h*c)./(lam*k.*T(i))-1)))));

lamMax(:,i) = (b./(T(i)));
E1_Max(:,i) = max(E1(:,i));
%-------------------------------Plot Functions----------------------------------------------%

loglog(lam,E1(:,i),'linewidth',2)
hold on
  xlabel('\lambda [\mum]','fontsize',14)
  ylabel('Spectral Radience [J·\mum^{-1}· m^{-3}]','fontsize',14)
  title('Blackbody Radiation','fontsize',14)
  xlim([10^-8 10^-3]);      %0.03*10^-6
  ylim([10^-3 10^9]);
  xticks([10^-8 10^-7 10^-6 10^-5 10^-4 10^-3])
  xticklabels({'0.01', '0.1', '1', '10', '100', '1000'});
  yticks([10^-2 10^0 10^2 10^4 10^6 10^8]);
  yticklabels({'10^-^2', '1', '10^2', '10^4', '10^6', '10^8'});
  fh = figure(1);
  set(fh, 'color', 'white');
  grid on
  
  %-------------------- Plot straigth line through peaks------------------%
  loglog(lamMax,E1_Max,'--r','linewidth',2);
  legend('', 'Wiens Law, \lambda_M_a_x = b/T ')
  
  %-------------------- Apply Text------------------%
 
  %tempText = num2str(T(:,i))
  
  text(1.31009696724079e-05, 0.0162361703317981,'100K' ,'fontSize',14);
  text(7.05436980890024e-06, 0.482462658818434,'300K','fontSize',14);
  text(3.98040708189395e-06, 5.41911294016657,'500K','fontSize',14);
  text(1.96949548691914e-06, 172.22510878237,'1000K','fontSize',14);
  text(9.84644694625026e-07, 5249.9120581203,'2000K','fontSize',14);
  text(3.49149022547199e-07, 1106511.77210034,'5778K','fontSize',14);
  text(1.95431530978723e-07, 15374915.9138191,'10000K','fontSize',14);
  
  %syms x phi
  %text(3.49149022547199e-07, 1106511.77210034,'\sin\left(\pi \,x\right)')
  %cha = latex(sin(pi*x))
  %text(latex(sin(pi*x)))
  %ylim([10^-8 10^-3]);
  %ylabel('y / {\it units}');                              

  
end

