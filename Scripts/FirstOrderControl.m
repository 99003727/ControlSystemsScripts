%% Title:Control System-First Order System: System analysis by changing gain
%Author:Shivakumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.4

%% This Document has equation for motion differential system
%Equation:mdv/dt+bv=u

%% Math analysis
%dependent variables:v
%independent variables:t,u
%constant:m,b
%Root:-b/m

%% Changing the gain of system 
%gain is 1 
m1=400;
b1=3000;
Tau=m1/b1;
TF1=tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(4,2,1),plot(impulse(TF1))
title("Impulse1")
subplot(4,2,2),plot(step(TF1))
title("Step1")
S = stepinfo(TF1)

%gain is 0.1
m1=400;
b1=3000;
Tau=m1/b1;
CF=0.1;
TF2=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(4,2,3),plot(impulse(TF2))
title("Impulse2")
subplot(4,2,4),plot(step(TF2))
title("Step2")
S = stepinfo(TF2)

%gain is 10
m1=400;
b1=3000;
Tau=m1/b1;
CF=10;
TF3=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(4,2,5),plot(impulse(TF3))
title("Impulse3")
subplot(4,2,6),plot(step(TF3))
title("Step3")
S = stepinfo(TF3)

%gain is 100
m1=400;
b1=3000;
Tau=m1/b1;
CF=100;
TF4=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(4,2,7),plot(impulse(TF4))
title("Impulse4")
subplot(4,2,8),plot(step(TF4))
title("Step4")
S = stepinfo(TF4)

%% Analysis:
%On changing the gain of the transfer function:
%1. By changing gain we can see that only amplitude is getting changed.
%2. Even after changing the gain settling time,rise time and peak time is 
%not getting changed
%3. peak, settling min and settling max is varying by factor of gain
%4. 

%% Change the control function
figure
% system with proportion
m1=400;
b1=3000;
Tau=m1/b1;
CF=0.1;
TF5=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(3,2,1),plot(impulse(TF5))
title("Impulse1")
subplot(3,2,2),plot(step(TF5))
title("Step1")
S = stepinfo(TF5);

% system with differentiator
m1=400;
b1=3000;
Tau=m1/b1;
CF=tf([1,0],[1]);
TF6=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(3,2,3),plot(impulse(TF6))
title("Impulse with zero")
subplot(3,2,4),plot(step(TF6))
title("Step with zero")
S = stepinfo(TF6);

% system with integrator
m1=400;
b1=3000;
Tau=m1/b1;
CF=tf([0,1],[1,0]);
TF7=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
subplot(3,2,5),plot(impulse(TF7))
title("Impulse with pole")
subplot(3,2,6),plot(step(TF7))
title("Step with pole")
S = stepinfo(TF7);

%poles printing
figure
subplot(3,1,1)
pzmap(TF5)
subplot(3,1,2)
pzmap(TF6)
subplot(3,1,3)
pzmap(TF7)

%% Analysis:
%1. Proportional: 1 pole
%2. By adding a Differentiator we are getting a zero added.
%3. By adding an integrator a pole is getting added.
%4. There is no affect on the poles in the first order only poles and
%zeroes are geeting added.