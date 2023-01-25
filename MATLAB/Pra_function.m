function y = Pra_function (inputs)
global Tpwb Tpww T Eramin Eramax Vra0 Vra0s Pra0 s3 
% Tpwb = 0.92;
% Tpww = 0.09;
% Eramin = 0.15;
% Eramax = 0.25;
% Pra0 = 1;
% Vra0 = 4;
% T = 1;
er = 0;
yp = 0;
Vra = inputs(1);
Time = inputs(2);

    if Time>=0 && Time< Tpwb
        er = 0;
    elseif Time>=Tpwb && Time<Tpwb+Tpww
        er = 1 - cos ((Time-Tpwb)/(Tpww)*2*pi);
    elseif Time>=Tpwb+Tpww && Time<T
        er = 0;
    end
    e_ra = Eramin + ((Eramax-Eramin)/2) * er;
    
    if s3 == 0
        yp = Pra0 + e_ra*(Vra0-Vra0s);
        s3 = s3 +1;
    else
        yp = Pra0 + e_ra*(Vra-Vra0s);
    end
    
    y = yp;
end