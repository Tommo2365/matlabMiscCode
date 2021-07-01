%------------------------------------------------------------------------%
%---------Black Body Radiation-------------------------------------------%
%------------------------------------------------------------------------%

clc;
close all;
clear all;

%--------------------------------- Parameters --------------------------------------------------%

b = 2.89777196*10^-3;   % Constant of proportionality
c = 2.99792458*10^8;    % Speed of light in vaccum
h = 6.62607004*10.^-34; % Planck constant 
k = 1.38064852*10.^-23; % Boltzmann constant
T = [100 300 500 1000 2000 5778 10000]; % Temperatures in Kelvin
lam = (0:0.01:4000).*1e-6; 
K = sprintf('K');

%----------------------------------- Visable spectum -------------------------------------------------------%
visableSpectrum = [0.000000380 0.000000410 0.000000440 0.000000470 0.000000500 0.000000540 0.000000580 0.000000620];

figure(1)
for  i= 1:7
%-------------------------------Spectral Emissvity-----------------------------------------%

E1(:,i) = ((8^3.15*pi*h*c)./(lam.^5)).*(1./((exp((h*c)./(lam*k.*T(i))))-1));

%E1(:,i)=(2*h*c*c)./((lam.^5).*(exp((h.*c)./(k.*T(i).*lam))-1));
%E1(:,i) = (2*pi*h*c^2) ./ (lam.^5 .* (exp((h*c)./lam*k.*T(i))-1));
%E1(:,i) = (((2*pi*h*c.^2)./(lam.^5)).*(1./(exp((h*c)./(lam*k.*T(i)))-1)));
%E1(:,i)= ((2*h*c*c)./(lam.^5)).*(exp(-(h*c)./(lam*k*T(i))));
%E1(:,i)=(2*h*c*c)./((lam.^5).*(exp((h.*c)./(k.*T(i).*lam)))-1);

lamMax(:,i) = (b./(T(i)));
E1_Max(:,i) = max(E1(:,i));
%-------------------------------Plot Functions----------------------------------------------%

plot(lam,E1(:,i),'linewidth',2)
hold on
  set(gca, 'YScale', 'log')
  set(gca,'Xscale', 'log')
  xlabel('\lambda [\mum]','fontsize',14)
  ylabel('I(\lambda, T) [W·m^{-2}· nm^{-1}]','fontsize',14)
  title('Blackbody Radiation','fontsize',14)
  xlim([10^-7 10^-4]);      %0.03*10^-6
  ylim([10^-2 10^10]);
  xticks([10^-8 10^-7 10^-6 10^-5 10^-4 10^-3])
  xticklabels({'0.01', '0.1', '1', '10', '100', '1000'});
  yticks([10^-2 10^0 10^2 10^4 10^6 10^8]);
  yticklabels({'10^-^2', '1', '10^2', '10^4', '10^6', '10^8'});
  fh = figure(1);
  set(fh, 'color', 'white');
  grid on
  
  %-------------------- Plot straigth line through peaks------------------%
  loglog(lamMax,E1_Max,'--r','linewidth',2);
  legend('Blackbody Radiation Curves', 'Wiens Law, \lambda_M_a_x = b/T ','5778K - Temperature of The Sun')
  legend('autoupdate','off')
  %-------------------- Apply Text------------------%
 
  %tempText = num2str(T(:,i))
  
  text(1.99007446443731e-05, 0.0449224763275364,'100K','fontSize',14);
  text(6.52963778039606e-06, 10.1746902817479,'300K','fontSize',14);
  text(3.94535262960615e-06, 107.579029626208,'500K','fontSize',14);
  text(1.82915010063533e-06, 4142.17448136041,'1000K','fontSize',14);
  text(9.60070936779882e-07, 95684.7833313602,'2000K','fontSize',14);
  text(2.58568766222212e-07, 8452304.75814426,'5778K','fontSize',14);
  text(1.91640823284008e-07, 389570644.76817,'10000K','fontSize',14);
  
  %syms x phi
  %text(3.49149022547199e-07, 1106511.77210034,'\sin\left(\pi \,x\right)')
  %cha = latex(sin(pi*x))
  %text(latex(sin(pi*x)))
  %ylim([10^-8 10^-3]);
  %ylabel('y / {\it units}');
  hold on
  
  % add visable lines

    for j = 1:8
    xline(visableSpectrum(:,j))
    hold on
    end
end





