function F=pathway_model_environ_new(t,y,para)
% the rate constant parameters
%% para(1) = 2e-5; para(2) = 1e-12; para(3) = 10; para(4) = 0.98; para(5) = 1.2
% F(1,1) = 0;
% F(2,1) = 0;
F(1,1)=para(1)*y(3)*(y(2)-y(1)-y(5))-para(2)*y(1)-y(1);
F(2,1)=((1+y(1)/y(2)+y(5)/y(2))*y(2)-para(3))*para(4)+para(3)-y(2);
if y(3) <= 0.5
    y(3) = 0;
   

    F(3,1) = 0;
else
 F(3,1) = para(5) *(y(3) - y(1))- y(3);
end
 F(4,1) = 0;
 F(5,1)=para(6)*y(4)*(y(2)-y(1)-y(5))-para(2)*y(5)-y(5);
 
end




%created by the program testexcel_IL
