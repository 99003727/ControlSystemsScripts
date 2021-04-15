%% Title:Control System-Second Order System: Horizontal shifting
%Author:ShivaKumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.4

%%
% First set of poles
zeros = 0;
poles = [-10+20i -10-20i];
gain = 1;
sys1 = zpk(zeros,poles,gain);
hold on
pzmap(sys1)
[wn,zeta]=damp(sys1)
   
% Second set of poles
zeros = 0;
poles = [-20+20i -20-20i];
gain = 1;
sys2 = zpk(zeros,poles,gain);
hold on
pzmap(sys2)
[wn,zeta]=damp(sys2)

% Third set of poles
zeros = 0;
poles = [-5+20i -5-20i];
gain = 1;
sys3 = zpk(zeros,poles,gain);
pzmap(sys3)
[wn,zeta]=damp(sys3)

%% Analysis: Horizontal movement of pole analysis:
% 1.The Pole pair which is nearer to the imaginary axis have lesser damping
% ratio which says that it must not more stable.
% 2.The pole pair which is far away to the imaginary axis have higher
% damping ratio which shows the system stability.
% 3.When the pole pair is far away from the imaginary axis(i.e.leftside)
% the system has higher frequency when compared to the other two set of
% poles which is nearer to the imaginary axis 
% 4.As all the set of poles have zeta values lying in the range of [0-1]
% so they have a complex conjugate roots.
% 5.The overshoot,damping of all the pole pairs are inversly proportional
% to each other in the given range of poles.
% 6.If overshoot is high rise time is less that means the system is fast.
