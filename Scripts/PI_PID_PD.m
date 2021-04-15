%% normal
J1 = 0.01;
b1 = 0.01;
K1 = 0.1;
R1 = 0.1;
L1 = 0.05;
sys1 = tf([K1/(J1*L1)],[1,((b1/J1)+(R1/L1)),(((K1*K1)+(R1*b1))/(L1*J1))])
subplot(4,3,1)
step(sys1)
subplot(4,3,2)
impulse(sys1)
subplot(4,3,3)
S = stepinfo(sys1)
pzmap(sys1)
 pidTuner(sys1)
 bode(sys1)
%% pi

 

J2 = 0.01;
b2 = 0.01;
K2 = 0.1;
R2 = 0.1;
L2 = 0.05;
Kp=10;
I=tf([10],[1,0]);  %Ki
PI=Kp+I;
sys2 = tf([K2/(J2*L2)],[1,((b2/J2)+(R2/L2)),(((K2*K2)+(R2*b2))/(L2*J2))])*(PI)
subplot(4,3,4)
step(sys2)
subplot(4,3,5)
impulse(sys2)
subplot(4,3,6)
S = stepinfo(sys2)
pzmap(sys2)
 pidTuner(sys2)
bode(sys2) 

 

%% PD
J3 = 0.01;
b3 = 0.01;
K3 = 0.1;
R3 = 0.1;
L3 = 0.05;
Kp=10;
D=tf([10,1],[0,1]);  %Kd
PD=Kp+D;
sys3 = tf([K3/(J3*L3)],[1,((b3/J3)+(R3/L3)),(((K3*K3)+(R3*b3))/(L3*J3))])*(PD)
subplot(4,3,7)
step(sys3)
subplot(4,3,8)
impulse(sys3)
subplot(4,3,9)
S = stepinfo(sys3)
pzmap(sys3)
 pidTuner(sys3);
 bode(sys3)
%% PID
J4 = 0.01;
b4 = 0.01;
K4 = 0.1;
R4 = 0.1;
L4 = 0.05;
Kp=10;
D=tf([10,1],[0,1]);  %Kd
I=tf([10],[1,0]);  %Ki
PID=Kp+D+I;
sys4 = tf([K4/(J4*L4)],[1,((b4/J4)+(R4/L4)),(((K4*K4)+(R4*b4))/(L4*J4))])*(PID)
subplot(4,3,10)
step(sys4)
subplot(4,3,11)
impulse(sys4)
subplot(4,3,12)
S = stepinfo(sys4)
pzmap(sys4)
 pidTuner(sys4)
 bode(sys4)