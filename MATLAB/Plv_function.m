function y = Plv_function (inputs)
global Ts1 Ts2 T Elvd Elvs Plv0 Vlv0 Vlv0s s2
% Ts1 = 0.3;
% Ts2 = 0.45;
% T = 1;
% Elvs = 2.5;
% Elvd = 0.1;
% Plv0 = 1;

e_l=0;

Vlv = inputs(1);
Time = inputs(2);

if Time>=0 && Time< Ts1
        e_l = 1 - cos ((Time/Ts1) * pi);
    elseif Time>=(Ts1*T) && Time<(Ts2*T)
        e_l = 1 + cos ((Time-Ts1*T)/(Ts2-Ts1*T) * pi);
    elseif Time>=(Ts2*T) && Time<T
        e_l = 0;
end
    
e_lv = Elvd + ((Elvs-Elvd)/2) * e_l;
if s2 == 0
    y = Plv0 + e_lv*(Vlv0-Vlv0s);
    s2 = s2 + 1;
else
    y = Plv0 + e_lv*(Vlv-Vlv0s);
end
end