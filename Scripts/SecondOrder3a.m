%% Title:Control System-Second Order System
%Author:Sushma L Nagangoudra
%PS No:99003752
%Date:7/04/2021
%Version:1.0


%% This Document has movement of poles for Second Order System


zeros = 0;
poles = [-10+20i -10-20i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)
   

zeros = 0;
poles = [-10+10i -10-10i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)


zeros = 0;
poles = [-5+20i -5-20i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)


zeros = 0;
poles = [-5+10i -5-10i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)