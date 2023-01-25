function y = era_function (input)
global T Tpwb Tpww Eramin Eramax 
Tpwb = 0.92;
Tpww = 0.09;
Eramin = 0.15;
Eramax = 0.25;

T = 1;
er = 0;

Time = input;

     if Time>=0 && Time<Tpwb
        er = 0;
    elseif Time>=Tpwb && Time<Tpwb+Tpww
        er = 1 - cos ((Time-Tpwb)/(Tpww)*2*pi)
    elseif Time>=Tpwb+Tpww && Time<T
        er = 0;
    end

y = Eramin + ((Eramax-Eramin)/2) * er;
end