function y = Qmi_function (inputs)
global CQmi
Pla = inputs(1);
Plv = inputs(2);

% CQmi = 400;

if Pla>=Plv
    y = CQmi * 1 * sqrt((Pla-Plv));
elseif Pla<Plv
    y = CQmi * 0 * sqrt((Plv-Pla));
end
end