function y = elv_function (inputs)
global Ts1 Ts2 T Elvd Elvs

e_l=0;
Vlv = inputs(1);
Time = inputs(2);

if Time>=0 && Time< Ts1
        e_l = 1 - cos ((Time/Ts1) * pi);
    elseif Time>=Ts1 && Time<Ts2
        e_l = 1 + cos ((Time-Ts1)/(Ts2-Ts1) * pi);
    elseif Time>=Ts2 && Time<=T
        e_l = 0;
end

y = Elvd + ((Elvs-Elvd)/2) * e_l;

end
