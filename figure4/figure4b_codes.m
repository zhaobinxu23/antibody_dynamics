% parametersetting; 这个模型要解释为什么可能产生慢性感染 chronic infection
clc
clear
x0(1) = 0;
x0(2) = 0;
x0(3) = 0;
x0(4) = 0;
x0(5) = 0;
x0(6) = 1;
x0(7) = 1;
x0(8) = 1;
x0(9) = 1;
x0(10) = 1;
x0(11) = 1;

para(1) = 1e-5; 
para(2) = 1e-14; 
para(3) = 1; 
para(4) = 0.98; 
para(5) = 1.1;
para(6) = 9e-6; 
para(7) = 8e-6; 
para(8) = 7e-6; 
para(9) = 6e-6; 
para(10) = 1;
para(11) = 1;
para(12) = 1;
para(13) = 1;
para(14) = 9e-15; 
para(15) = 8e-15; 
para(16) = 7e-15; 
para(17) = 6e-15; 
[t y]=ode15s(@pathway_model_multi_antibody,[0 300],x0,[],para);
% plot(t,y(:,1),'linewidth',2);
% hold on
plot(t,y(:,6),'linewidth',2);
hold on
plot(t,y(:,7),'linewidth',2);
hold on
plot(t,y(:,8),'linewidth',2);
hold on
plot(t,y(:,9),'linewidth',2);
hold on
plot(t,y(:,10),'linewidth',2);
hold on
plot(t,y(:,11),'linewidth',2);