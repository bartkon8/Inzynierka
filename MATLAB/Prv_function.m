function y = Prv_function (inputs)
global Ts1 Ts2 T Ervd Ervs Vrv0 Vrv0s Prv0 s4
% Ts1 = 0.3;
% Ts2 = 0.45;
% T = 1;
% Ervs = 1.15;
% Ervd = 0.1;
% Prv0 = 1;
% Vrv0 = 10;
e_r=0;

Vrv = inputs(1);
Time = inputs(2);

if Time>=0 && Time< (Ts1*T)
        e_r = 1 - cos ((Time/(T*Ts1)) * pi);
    elseif Time>=(Ts1*T) && Time<(Ts2*T)
        e_r = 1 + cos ((Time-Ts1*T)/(T*(Ts2-Ts1)) * pi);
    elseif Time>=(Ts2*T) && Time<T
        e_r = 0;
end
    
e_rv = Ervd + ((Ervs-Ervd)/2) * e_r;
if s4 == 0
    y = Prv0 + e_rv*(Vrv0-Vrv0s);
    s4 = s4 +1;
else
    y = Prv0 + e_rv*(Vrv - Vrv0s);
end
end