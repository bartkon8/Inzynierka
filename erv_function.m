function y = erv_function (inputs)

Ts1 = 0.3;
Ts2 = 0.45;
Ervs = 1.15;
Ervd = 0.1;
Prv0 = 1;
Vrv0 = 10;
e_r=0;
T = 1;
Vlv = inputs(1);
Time = inputs(2);

 if Time>=0 && Time< Ts1
        e_r = 1 - cos ((Time/Ts1) * pi);
    elseif Time>=Ts1 && Time<Ts2
        e_r = 1 + cos ((Time-Ts1)/(Ts2-Ts1) * pi);
    elseif Time>=Ts2 && Time<T
        e_r = 0;
 end

y = Ervd + ((Ervs-Ervd)/2) * e_r;

end