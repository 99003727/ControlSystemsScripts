%% Title:Control System-Second Order System: diagonal shifting
%Author:ShivaKumar Naga Vankadhara
%PS No:99003727
%Date:7/04/2021
%Version:1.0


%% This Document has movement of poles for Second Order System
zeros = 0;
poles = [-10+10i -10-10i];
gain = 1;
sys = zpk(zeros,poles,gain);
hold on
pzmap(sys)
[wn1,zeta1]=damp(sys)
   
zeros = 0;
poles = [-100+100i -100-100i];
gain = 1;
sys = zpk(zeros,poles,gain);
hold on
pzmap(sys)
[wn2,zeta2]=damp(sys)

zeros = 0;
poles = [-300+300i -300-300i];
gain = 1;
sys = zpk(zeros,poles,gain);
pzmap(sys)
[wn3,zeta3]=damp(sys)
%% Analysis of movement of poles in the diagonal Direction.
% 1. Overshoot remains same at the different location of poles.
% 2. Frequency gets increased when the pole is moved upwards.
% 3. Frequency gets decreased when the pole moves downwards.
% 4. As the zeta is in between [0-1] the poles are complex conjugate roots. 