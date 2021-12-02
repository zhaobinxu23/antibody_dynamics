
clc
clear
x0(1) = 0;
x0(2) = 0;
x0(3) = 1;
x0(4) = 1000;
x0(5) = 1;


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 1; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 5e-6; 
para(7) = 1; 
para(8) = 1e-14; 
 
[t y]=ode15s(@pathway_model_2_antibody,[0 300],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,3),'linewidth',2);
hold on
plot(t,y(:,4),'linewidth',2);
hold on
% plot(t,y(:,8),'linewidth',2);
% hold on
% plot(t,y(:,9),'linewidth',2);
% hold on
% plot(t,y(:,10),'linewidth',2);
% hold on
plot(t,y(:,5),'linewidth',2);

%%
clc
clear
x0(1) = 0;
x0(2) = 0;
x0(3) = 1;
x0(4) = 1;
x0(5) = 1;


para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 1; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 5e-6; 
para(7) = 1; 
para(8) = 1e-14; 
 
[t y]=ode15s(@pathway_model_2_antibody,[0 300],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,3),'linewidth',2);
hold on
plot(t,y(:,4),'linewidth',2);
hold on
% plot(t,y(:,8),'linewidth',2);
% hold on
% plot(t,y(:,9),'linewidth',2);
% hold on
% plot(t,y(:,10),'linewidth',2);
% hold on
plot(t,y(:,5),'linewidth',2);
