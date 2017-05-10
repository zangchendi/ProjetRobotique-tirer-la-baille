
motor1.Speed=30;
motor2.Speed=30;
t0=cputime;
dt=100;
motor1.start;
motor2.start;
distance=readProximity(sensor1);
% t=cputime;
while(cputime-t0<dt)
    if(readProximity(sensor1)<60)
        motor1.Speed=-30;
        motor2.Speed=-30;   
        t1=cputime;
        while(cputime-t1<1)
        end
        motor2.Speed=30;
        t2=cputime;
        while(cputime-t2<3)
        end
        motor1.Speed=30;
    end 

    
        
end
motor1.stop;
motor2.stop;