 %% Title:Control System-Second Order System:vertical shifting
%Author:Shivakumar Naga Vankadhara
%PS No:99003727
%Date:11/04/2021
%Version:1.7


%% This Document has movement of poles for Second Order System


zeros = 0;
poles = [-10+20i -10-20i];
gain = 1;
sys1 = zpk(zeros,poles,gain);
hold on
pzmap(sys1)
[wn,zeta]=damp(sys1)
   
zeros = 0;
poles = [-10+10i -10-10i];
gain = 1;
sys2 = zpk(zeros,poles,gain);
hold on
pzmap(sys2)
[wn,zeta]=damp(sys2)

zeros = 0;
poles = [-10+30i -10-30i];
gain = 1;
sys3 = zpk(zeros,poles,gain);
pzmap(sys3)
[wn,zeta]=damp(sys3)
%% Analysis of vertical movement of poles:
% 1.for the upward movement of the pole Overshoot increases, frequency
% increases , Damping gets reduced so the system is becoming stable when it
% is moving upward.
% 2.So for the Downward movement of the pole Overshoot decreases, frequency
% decreases, Damping gets increased so thr system is getting less stable. 
