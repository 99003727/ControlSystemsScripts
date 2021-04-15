%% Title:Control System-Second Order System:varying zeta value open system
%Author:ShivaKumar Naga Vankadhara
%PS No:99003727
%Date:10/04/2021
%Version:1.0


%% This Document has equation for Second Order System
%w=1

jeta=1;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
figure
subplot(2,3,1)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=0.7;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
%hold on
subplot(2,3,2)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=1.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,3)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=-1;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,4)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)


jeta=-0.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,5)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=-1.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,6)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

figure
jeta=0;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

%% Analysis based on zeta
% 1. If zeta>0 we may get the roots on the left side of the imaginary axis.
% 2. If zeta<0 we may get the roots on the right side of the imaginary
% axis.
% 3. If zeta lies in the range of [0-1] we get complex conjugate roots.
% 4. If zeta ranges greater than 1 we get real roots and distinct.
% 5. If zeta is equal to 1 we get real roots.
% 6. If zeta is zero poles lies on the imaginary axis like complex
% conjugate roots system is undamped.