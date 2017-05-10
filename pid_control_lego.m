Ts=0.05;
G1=0.02;
G2=180/pi;
G=G1*G2;
A=[0 1;0 -1/Ts];
B=[0;G/Ts];
C=[1 0];
D=0;
sys_motor=ss(A,B,C,D);
Ps=[-5+5j;-5-5j];
K=acker(A,B,Ps);
eig(A-B*K);
sys_motor_SF=ss(A-B*K,B,C,D);
step(sys_motor_SF,10)
V=[-0.5,-10];
L=(acker(A',C',V))'

