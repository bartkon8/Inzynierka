function y = Qao_function (inputs)
global CQao s5 Psas0
Plv = inputs(1);
Psas = inputs(2);

% CQpo = 350;
if s5 == 0
    
    if Plv>=Psas
        y = CQao * 1 * sqrt((Plv-Psas0));
    elseif Plv<Psas
        y = CQao * 0 * sqrt((Psas0-Plv));
    end
    s5 = s5 + 1;
else
    if Plv>=Psas
        y = CQao * 1 * sqrt((Plv-Psas));
    elseif Plv<Psas
        y = CQao * 0 * sqrt((Psas-Plv));
    end
end
end