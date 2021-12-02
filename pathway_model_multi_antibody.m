function F=pathway_model_multi_antibody(t,y,para)
% the rate constant parameters include 5 antibodies
%% para(1) = 2e-5; para(2) = 1e-12; para(3) = 10; para(4) = 0.98; para(5) = 1.2

F(1,1)=para(1)*y(6)*y(11)-para(2)*y(1)-y(1);
F(2,1)=para(6)*y(7)*y(11)-para(14)*y(2)-y(2);
F(3,1)=para(7)*y(8)*y(11)-para(15)*y(3)-y(3);
F(4,1)=para(8)*y(9)*y(11)-para(16)*y(4)-y(4);
F(5,1)=para(9)*y(10)*y(11)-para(17)*y(5)-y(5);
F(6,1)=((1+y(1)/y(6))^1*y(6)-para(3))*para(4)+para(3)-y(6);
F(7,1)=((1+y(2)/y(7))^1*y(7)-para(10))*para(4)+para(10)-y(7);
F(8,1)=((1+y(3)/y(8))^1*y(8)-para(11))*para(4)+para(11)-y(8);
F(9,1)=((1+y(4)/y(9))^1*y(9)-para(12))*para(4)+para(12)-y(9);
F(10,1)=((1+y(5)/y(10))^1*y(10)-para(13))*para(4)+para(13)-y(10);

if y(11) <= 0
   

    F(11,1) = 0;
else
 F(11,1) = para(5) *(y(11) - y(1)-y(2)-y(3)-y(4)-y(5))- y(11);
end




%created by the program testexcel_IL
