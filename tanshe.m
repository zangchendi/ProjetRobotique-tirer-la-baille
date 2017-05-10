function tanshe(motor4)
    motor4.Speed=100;
    motor4.start;

    resetRotation(motor4);


    t0=cputime;
    bt=0.8;
    ft=1.3;
    while cputime-t0<2*(bt+ft)  
        motor4.Speed=-40;
           t1=cputime;
        while cputime-t1<bt

        end
        motor4.Speed=100;
        t1=cputime;
        while cputime-t1<ft
        end
    end
    %     motor4.Speed=-100;
    %     t1=cputime;
    %     while cputime-t1<1.3
    %     end
        motor4.stop;
    % end
    % motor4.Speed=-50;
    % 
    % while readRotation(motor4)>0
    % end
end
