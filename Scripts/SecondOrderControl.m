%% Title:Control System-Second Order System: p,i,d OPEN
%Author:ShivaKumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.7

%% This Document has equation for DC Motor
%Equation:Ldi/dt+Ri+Kw=V
%         Jdw/dt+bw=Ki
%T(s)=(K/LJ)/(s^2+((b/J)+(R/L)s+(R*b)/(L*J)+(K*K)/(L*J)

%% Math analysis
%dependent variables:w
%independent variables:t
%constant:K,R,L,J,b
%Roots:0.5*(-(b/J)-(R/L))+sqrt((((b*b)/(J*J))+((R*R)/(L*L))-((2*R*b)/(L*J))-((4*K*K)/(L*J)))
%      0.5*(-(b/J)-(R/L))-sqrt((((b*b)/(J*J))+((R*R)/(L*L))-((2*R*b)/(L*J))-((4*K*K)/(L*J)))

J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=1;
sys1 = CF*TF;
subplot(4,2,1)
step(sys1)
title("Step ")
subplot(4,2,2)
impulse(sys1)
title("Impulse")
S = stepinfo(sys1);
[wn,zeta]=damp(sys1)
p1=pole(sys1)
z1=zero(sys1)


J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10;
sys2 = CF*TF;
subplot(4,2,3)
step(sys2)
title("Step with gain")
subplot(4,2,4)
impulse(sys2)
title("impulse with gain")
S = stepinfo(sys2)
[wn,zeta]=damp(sys2)
p2=pole(sys2)
z2=zero(sys2)



J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1,0],[1]);
sys3 = CF*TF;
subplot(4,2,5)
step(sys3)
title("Step with zero ")
subplot(4,2,6)
impulse(sys3)
title("impulse with zero ")
S = stepinfo(sys3)
[wn,zeta]=damp(sys3)
p3=pole(sys3)
z3=zero(sys3)




J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1],[1,0]);
sys4 = CF*TF;
subplot(4,2,7)
step(sys4)
title("Step with pole ")
subplot(4,2,8)
impulse(sys4)
title("impulse with pole ")
S = stepinfo(sys4)
[wn,zeta]=damp(sys4)
p4=pole(sys4)
z4=zero(sys4)

%%
figure
hold on
pzmap(sys1)
pzmap(sys2)
pzmap(sys3)
pzmap(sys4)
%% Analysis
%1.There is no change in the poles when we add differentiator, integrator
% and differentiator.
%2. When we add a differentiator the system becomes more stable because a 
%zero is getting added to it.
%3. Adding a differentiator IVT got shifted from zero, Fvt will remain same
% for impulse response.
%4. FVT of integrator of impulse got shifted to zero.
%5. By adding integrator step response doesn't settle.

