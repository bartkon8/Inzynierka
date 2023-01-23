function y = Qti_function (inputs)
global CQti
Pra = inputs(1);
Prv = inputs(2);

%CQti = 400;

if Pra>=Prv
    y = CQti * 1 * sqrt((Pra-Prv));
elseif Pra<Prv
    y = CQti * 0 * sqrt((Prv-Pra));
end

end
