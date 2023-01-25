function y = Pla_function (inputs)
global Tpwb Tpww T Elamin Elamax Pla0 Vla0 Vla0s s1
% Tpwb = 0.92;
% Tpww = 0.09;
% Elamin = 0.15;
% Elamax = 0.25;
% Pla0 = 1;
% Vla0 = 4;
% T = 1;
el = 0;
Vla = inputs(1);
Time = inputs(2);

    if Time>=0 && Time< Tpwb
        el = 0;
    elseif Time>=Tpwb && Time<Tpwb+Tpww
        el = 1 - cos((2*pi*(Time-Tpwb))/(Tpww));
    elseif Time>=Tpwb+Tpww && Time<T
        el = 0;
    end
     
e_la = Elamin + ((Elamax-Elamin)/2) * el;
if s1 == 0
    y = Pla0 + e_la*(Vla0 - Vla0s);
    s1 = s1 + 1;
else
    y =  Pla0 + e_la*(Vla-Vla0s);
end
end