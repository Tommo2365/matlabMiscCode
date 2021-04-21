%------------------------------------------------------------------------%
%---------Black Body Radiation-------------------------------------------%
%------------------------------------------------------------------------%

clc;
close all;
clear all;

%------------------------------------------------------------------------%

c=2.99*10^8; % speed of light in vaccum
h=6.626*10.^-34; %  Planck constant 
k=1.38*10.^-23; %   Boltzmann constant
T= [100 250 500 1000 2000 5778 10000]; % Temperatures in Kelvin
Lam=(0:0.1:5000).*1e-6; 
%n = (0:1:10)

figure(1)
for i=1:7
    
%------------Wiens Displacement Law--------------------------------------%

%I1(:,i)= ((2*h*c*c)./(Lam.^5)).*(exp(-(h*c)./(Lam*k*T(i))));

%------------Planks Law--------------------------------------------------%

%I2(:,i)=(2*h*c*c)./((Lam.^5).*(exp((h.*c)./(k.*T(i).*Lam)))-1);
%I2(:,i)=(2*h*c^2./Lam.^5)./(exp(h*c./(Lam*k*T(i)))-1)

%------------------------------------------------------------------------%

E1(:,i)=(2*pi*h*c^2).*(1./((Lam.^5).*((exp((h*c)./(Lam*k.*T(i))-1)))));
%E1(:,i)=((2*pi*c^2)./(Lam.^5))*(1/(exp(c*h./Lam*k.*T(i))-1))

%plot(Lam,I1(:,i),'linewidth',2)
%plot(Lam,I1(:,i),'b','linewidth',2)
%hold on
%plot(Lam,I2(:,i),'linewidth',2)
%hold on
%loglog(Lam,I1(:,i),'g','linewidth',2)
%hold on
%loglog(Lam,E1(:,i),'b','linewidth',2)
loglog(Lam,E1(:,i),'linewidth',2)
hold on

  %text(.55e-5,.7e8,'T=500K','fontSize',14)
  %text(.5e-5,2e8,'T=600K','fontSize',14)
  %text(.8e-5,5e8,'T=700K','fontSize',14)

  %line([1.2e-5 1.4e-5], [6e8 6e8],'color','r','linewidth',2)
  %line([1.2e-5 1.4e-5], [5e8 5e8],'linewidth',2)
  %line([1.2e-5 1.4e-5], [5e8 5e8],'color','b','linewidth',2)
  
  %text(14.5e-5,6e8,'Plancks Law','fontSize',14)
  %text(1.45e-5,5e8,'Wiens Law','fontSize',14)

  
  xlabel('\lambda [\mum]','fontsize',14)
  ylabel('Spectral Radience [kW·sr^{-1}·m^{-2}·nm^{-1}]','fontsize',14)
  title('Blackbody Radiation','fontsize',14)
  xlim([10^-7 10^-2]);      %0.03*10^-6
  ylim([10^-2 10^10]);
  %xticks([0.1 1 10 100]);
  %set (gca, 'Yscale', 'log')
  %set (gca, 'Xscale', 'log')
  fh = figure(1);
  set(fh, 'color', 'white');
end

