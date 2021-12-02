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
para(6) = 1e-9;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ_new,[0 1500],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);



data1_new = interp1(t,y(:,2),(160:1:1000));

save('data1_new','data1_new');

clc
clear
data = load('data1_new');
data = data.data1_new;
for i = 1:length(data)
x0(1) = 0;% virus_antibody_complex
x0(2) = data(i);% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e6; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 1e-9;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ_new,[0 1500],x0,[],para);
data_virus_max(i) = max(y(:,3));
clear x0
end

%
x0(1) = 0;% virus_antibody_complex
x0(2) = data(810);% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e6; % environment antigen
x0(5) = 0;% environ_antibody_complex


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 0; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 1e-9;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ_new,[970 1500],x0,[],para);

plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);
hold on