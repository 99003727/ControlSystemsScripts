%% Title:Control System-First Order System: Analysis by poles and parameters
%Author:ShivaKumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.7

%% This Document has equation for motion differential system
%Equation:mdv/dt+bv=u

%% Math analysis
%dependent variables:v
%independent variables:t,u
%constant:m,b
%Root:-b/m


%% IVT
%for impulse is 1/m=0.002
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.00028

m1=500;
b1=3500;
Tau=m1/b1;
TF=tf([0,1/b1],[Tau,1])
T_R=4*Tau
subplot(3,3,1),plot(impulse(TF))
title("Impulse response 1")
subplot(3,3,2),plot(step(TF))
title("Step response 1")
S = stepinfo(TF)

%% IVT
%for impulse is 1/m=0.00166
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.001111

m2=600;
b2=900;
Tau=m2/b2;
T_R=4*Tau
TF=tf([0,1/b2],[Tau,1])
subplot(3,3,3),plot(impulse(TF))
title("Impulse response 2")
subplot(3,3,4),plot(step(TF))
title("Step response 2")
S = stepinfo(TF)

%% IVT
%for impulse is 1/m=0.00125
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.025

m3=800;
b3=40;
Tau=m3/b3;
T_R=4*Tau
TF=tf([0,1/b3],[Tau,1])
subplot(3,3,5),plot(impulse(TF))
title("Impulse response 3")
subplot(3,3,6),plot(step(TF))
title("Step response 3")
S = stepinfo(TF)

%% Poles plotting 
hold on

subplot(3,3,7)
[z1,p1,k1]= tf2zp([0,1/b1],[m1/b1,1])
zplane(z1,p1)

hold on

subplot(3,3,7)
[z2,p2,k2]= tf2zp([0,1/b2],[m2/b2,1])
zplane(z2,p2)

hold on
subplot(3,3,7)
[z3,p3,k3]= tf2zp([0,1/b3],[m3/b3,1])
zplane(z3,p3)

%% Response analysis (SAS)
% Rise time
%T1=0.3139
%T2=1.4647
%T3=43.9401
%System 1 has the least rise time so the speed of system is greatest
%System 3 has the greatest rise time so the speed of system is least

% Settling time
%S1=0.5589
%S2=2.6080
%S3=78.2415
%System 1 is taking least time to get settled so the system is accurate
%System 3 is taking most time to get settled so the system is least accurate

% Pole position
%P1=-7.0
%P2=-1.5000
%P3=-0.0500
% system 1 pole is farthest away from pole:best stabilty among 3 
% system 1 pole is farthest away from pole:worst stablity among 3
