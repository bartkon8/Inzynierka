function y = ela_function (inputs)

Tpwb = 0.92;
Tpww = 0.09;
Elamin = 0.15;
Elamax = 0.25;
Pla0 = 1;
Vla0 = 4;
T = 1;
el = 0;
Vla = inputs(1);
Time = inputs(2);

     if Time>=0 && Time< Tpwb
        el = 0;
    elseif Time>=Tpwb && Time<Tpwb+Tpww
        el = 1 - cos((Time-Tpwb)/(Tpww)*2*pi)
    elseif Time>=Tpwb+Tpww && Time<T
        el = 0;
     end

y = Elamin + ((Elamax-Elamin)/2) * el;
end