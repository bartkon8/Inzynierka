function y = ela_function (input)
global Tpwb T Tpww Elamin Elamax

el = 0;

Time = input;

     if Time>=0 && Time< Tpwb
        el = 0;
    elseif Time>=Tpwb && Time<Tpwb+Tpww
        el = 1 - cos((Time-Tpwb)/(Tpww)*2*pi)
    elseif Time>=Tpwb+Tpww && Time<T
        el = 0;
     end

y = Elamin + ((Elamax-Elamin)/2) * el;
end