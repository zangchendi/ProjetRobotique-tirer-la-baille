motor1.Speed=100;
motor2.Speed=100;

resetRotation(motor1);
resetRotation(motor2);
motor1.start;motor2.start;
t0=cputime;
while readRotation(motor1)/(cputime-t0)<650
    resetRotation(motor1);
    t0=cputime;
end
t1=cputime-t0
motor1.stop;
motor2.stop;
