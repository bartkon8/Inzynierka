function y = Qpo_function (inputs)
global CQpo s6 Ppas0
Prv = inputs(1);
Ppas = inputs(2);

%CQpo = 350;

if Prv>=Ppas
    y = CQpo * 1 * sqrt((Prv-Ppas));
elseif Prv<Ppas
    y = CQpo * 0 * sqrt((Ppas-Prv));
end
if s6 == 0
    
    if Prv>=Ppas
        y = CQpo * 1 * sqrt((Prv-Ppas0));
    elseif Prv<Ppas
        y = CQpo * 0 * sqrt((Ppas0-Prv));
    end
    s6 = s6 + 1;
else
    if Prv>=Ppas
        y = CQpo * 1 * sqrt((Prv-Ppas));
    elseif Prv<Ppas
        y = CQpo * 0 * sqrt((Ppas-Prv));
    end
end

end