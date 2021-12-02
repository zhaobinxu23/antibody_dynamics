function F=pathway_model_2_antibody(t,y,para)
% the rate constant parameters include 5 antibodies
%% para(1) = 2e-5; para(2) = 1e-12; para(3) = 10; para(4) = 0.98; para(5) = 1.2

F(1,1)=para(1)*y(3)*y(5)-para(2)*y(1)-y(1);
F(2,1)=para(6)*y(4)*y(5)-para(8)*y(2)-y(2);
% F(3,1)=para(7)*y(8)*y(11)-para(15)*y(3)-y(3);
% F(4,1)=para(8)*y(9)*y(11)-para(16)*y(4)-y(4);
% F(5,1)=para(9)*y(10)*y(11)-para(17)*y(5)-y(5);
F(3,1)=((1+y(1)/y(3))^1*y(3)-para(3))*para(4)+para(3)-y(3);
F(4,1)=((1+y(2)/y(4))^1*y(4)-para(7))*para(4)+para(7)-y(4);


if y(5) <= 0
   

    F(5,1) = 0;
else
 F(5,1) = para(5) *(y(5) - y(1)-y(2))- y(5);
end




%created by the program testexcel_IL
