%% Title:ControlSystemsecondorder:negative fb with different parameter values
%Author:Shivakumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.4
%% This Document has equation for DC motor system
%Equation1:vi=IR+L(di/dt)+kw
%Equation2:J(dw/dt)+bw=kI
%% Math Analysis
% Independent variables: T
% Dependent Variables:w,I
% Constants:L,K,R
%Roots:-(((RJ+bL)/JL)+-(2((R^2*J^2+b^2*L^2+2JbL)/J^2*L^2)-4((bR+k^2)/JL))^1/2)/2
%% 
J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
NCTF=feedback(sys,1)
subplot(4,2,1)
step(NCTF)
title("Step 1")
subplot(4,2,2)
impulse(NCTF)
title("impulse1")
S = stepinfo(NCTF)
[wn,zeta]=damp(NCTF)

J = 0.1;
b = 1;
K = 0.1;
R = 10;
L = 5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
NCTF1=feedback(sys,1)
subplot(4,2,3)
step(NCTF1)
title("Step 2")
subplot(4,2,4)
impulse(NCTF1)
title("impulse 2")
S = stepinfo(NCTF1)
[wn,zeta]=damp(NCTF1)

J = 0.01;
b = 0.01;
K = 0.1;
R = 0.1;
L = 0.05;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
NCTF2=feedback(sys,1)
subplot(4,2,5)
step(NCTF2)
title("Step 3")
subplot(4,2,6)
impulse(NCTF2)
title("impulse 3")
S = stepinfo(NCTF2)
[wn,zeta]=damp(NCTF2)



J = -0.01;
b = -0.01;
K = -0.1;
R = -0.1;
L = -0.05;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
NCTF3=feedback(sys,1)
subplot(4,2,7)
step(NCTF3)
title("Step 3")
subplot(4,2,8)
impulse(NCTF3)
title("impulse 3")
S = stepinfo(NCTF3)
[wn,zeta]=damp(NCTF3)

%%
figure
hold on
pzmap(NCTF)
pzmap(NCTF1)
pzmap(NCTF2)
pzmap(NCTF3)

%% Analysis:
%1. For negative variables the root of a system becomes positive so the syste
%m is unstable.
%2. Rise time of negative feedback closed loop system is less when compared
% to open loop system of the same second order.
%3. Zeros & Poles locations got changed when we added a negative feed back.
%4. System becomes under damped
%5. Overshoot is high when compared to open loop system.
%6. For the 3rd negative variables risetime, passtime every other parametrs
%becomes inf.
