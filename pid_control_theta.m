function pid_control_theta(L,motor1,motor2)
%L=200;
% theta=1800;
taux=0.036971;  %distance/angle
R=2.08;     %2.07
% L=theta/180*pi*R
%theta=L/R/pi*180
theta=L/taux;
Kp=0.2;
Ki=0.015;
Kd=0.2;

uA=0;
uB=0;
error1A=theta;
error2A=theta;
error1B=theta;
error2B=theta;
resetRotation(motor1);
resetRotation(motor2);
% K=10;
% Ts=0.1;
motor1.start;
motor2.start;
tic;
while toc<10
    errorA=theta-readRotation(motor1);
    errorB=theta-readRotation(motor1);
    d_uA=Kp*(errorA-error1A)+Ki*errorA+Kd*(errorA-2*error1A+error2A);
    d_uB=Kp*(errorB-error1B)+Ki*errorB+Kd*(errorB-2*error1B+error2B);
    uA=uA+d_uA;
    uB=uB+d_uB;
    uA=min(uA,100);
    uA=max(uA,-100);
    uB=min(uB,100);
    uB=max(uB,-100);
    motor1.Speed=uA;
    motor2.Speed=uB;
    error2A=error1A;
    error1A=errorA;
    error2B=error1B;
    error1B=errorB;
%     if errorA>300
%         pause(0.01)
%     end
    
end
motor1.stop;
motor2.stop;

end