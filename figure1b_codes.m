% parametersetting;
clc
clear
x0(1) = 0;% virus_antibody_complex
x0(2) = 100;% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e6; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 1e-8;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ,[0 1000],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);
%%
clc
clear
x0(1) = 0;% virus_antibody_complex
x0(2) = 100;% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e6; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 2e-8;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ,[0 1000],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);
% 
% data1_new = interp1(t,y(:,2),[0:1:400]);
% data2_new = interp1(t,y(:,3),[0:1:400]);
% save('data1_new','data1_new');
% save('data2_new','data2_new');