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
para(6) = 2e-8;% environment antigen binding kinetics
[t, y]=ode15s(@pathway_model_environ_new,[0 500],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);



data1_new = interp1(t,y(:,2),(0:1:400));

save('data1_new','data1_new');

data2_new = interp1(t,y(:,3),(0:1:400));

save('data2_new','data2_new');

pause

clc
clear
%%
YY = zeros(100,100);
for i = 1:100
    i
    for j = 1:100
    

%     parametersetting;
    %% initial values for new variables
x0(1) = 0;% virus_antibody_complex
x0(2) = 100;% antibody_level_initial
x0(3) = 10;% virus_intial_number
x0(4) = 1e6; % environment antigen
x0(5) = 0;% environ_antibody_complex
    
    %% values for newly added parameters
    
    para(1) = 1e-8*1.1^(i); 
    para(2) = 1e-14; 
    para(3) = 0; 
    para(4) = 0.98; 
    para(5) = 1.1;
    para(6) = 1e-10*1.1^(j);% environment antigen binding kinetics


    %% Data for IL-6 stimulation, 5 ng/ml
    Time = [0:1:400];
    model1 = load('data1_new.mat');
    
    antibody_control = model1.data1_new;
    
    model2 = load('data2_new.mat');
    virus_control = model2.data2_new;

   
      

    [t y]=ode15s(@pathway_model_environ_new,[0 500],x0,[],para);


    rate_antibody = y(:,2); 
    rate_virus = y(:,3);
    

    rate_antibody_continuous = interp1(t,rate_antibody,Time);
    rate_virus_continuous = interp1(t,rate_virus,Time);


    
    Y1 = [(rate_antibody_continuous - antibody_control)/max(antibody_control) (rate_virus_continuous - virus_control)/max(virus_control)];





    YY(i,j) = sum(Y1.^2);
     
    end
end