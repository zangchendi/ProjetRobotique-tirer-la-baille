clear;
initial;

rspeed1=-13;
rspeed2=13;
[proximity,heading]=readBeaconProximity(sensor1,2);
while heading>0 || heading<-1 || proximity<0 || proximity>80
    %[proximity,heading]=readBeaconProximity(sensor1,1)
        
    if heading<0
        motor1.Speed=rspeed1;
        motor2.Speed=rspeed2;
        motor1.start;motor2.start;
    elseif heading>-1
        motor1.Speed=rspeed2;
        motor2.Speed=rspeed1;
        motor1.start;motor2.start;
    end
    tic;
    while toc<0.1
    end
    motor1.stop;motor2.stop;
    while toc<0.5
    end
    
    [proximity,heading]=readBeaconProximity(sensor1,2)
    display('ajusting heading');
end
display('rdy 2 mv'); 

motor1.stop;motor2.stop;
dis=double(proximity)-52.0;
dis=dis*2.0652

pid_control_theta(dis,motor1,motor2);
display('rdy 2 launch'); 
tanshe(motor4);
