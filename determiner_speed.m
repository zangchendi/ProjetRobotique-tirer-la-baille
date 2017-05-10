motor1.Speed=100;
motor2.Speed=100;
motor1.start;
motor2.start;
t0=cputime;
% resetRotation(motor1);
while cputime-t0<5
end
t0=cputime;
resetRotation(motor1);
while cputime-t0<6
end
realSpeed=readRotation(motor1)/(cputime-t0)
motor1.stop;
motor2.stop;