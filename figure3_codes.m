% parametersetting;
clc
clear
x0(1) = 0;% virus_antibody_complex
x0(2) = 100;% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e3; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-7; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 1e-9;% environment antigen binding kinetics change this to 1*e-7 for figure2b
[t, y]=ode15s(@pathway_model_environ,[0 400],x0,[],para);
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);

%%
clc
clear
x0(1) = 0;% virus_antibody_complex
x0(2) = 100;% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e3; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-7; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.06;
para(6) = 1e-9;% environment antigen binding kinetics change this to 1*e-7 for figure2b
[t, y]=ode15s(@pathway_model_environ,[0 400],x0,[],para);
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);


% plot(t,y(:,3),'linewidth',2);
