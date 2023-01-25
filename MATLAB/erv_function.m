function y = erv_function (input)
global Ts1 Ts2 Ervs Ervd T


e_r=0;


Time = input;

 if Time>=0 && Time< Ts1
        e_r = 1 - cos ((Time/Ts1) * pi);
    elseif Time>=Ts1 && Time<Ts2
        e_r = 1 + cos ((Time-Ts1)/(Ts2-Ts1) * pi);
    elseif Time>=Ts2 && Time<T
        e_r = 0;
 end

y = Ervd + ((Ervs-Ervd)/2) * e_r;

end