function opinion = opinionsystemdiff(op)

    %parameter
    alpha      = op(1);
    phi        = op(2);
    chi        = op(3);
    lambda     = op(4);
    a          = op(5);


  %Initial conditions
    L   = 100;
    R   = 5215000;
    U   = 1694000;
    D   = 31556000;
    H   = 31556000;
    I   = 5000000;
    Q_2 = 15000000;
    N   = L + R + U + D + H;
    
   %ODE system
    opinion(1) = -alpha * R/N * L*(1-(I+Q_2)/N) - alpha * U/N * L - alpha * D/N * L*(1+(I+Q_2)/N) + phi * R + phi * H;    %L
    opinion(2) =  alpha * U/N * L-  chi* (a*R/(1+a*R))/N * U *(1-(I+Q_2)/N) - chi * D/N * U*(1+(I+Q_2)/N) - lambda * U;   %U
    opinion(3) =  alpha * D/N * L*(1+(I+Q_2)/N) + chi * D/N * U*(1+(I+Q_2)/N) - lambda * D;                               %D
    opinion(4) =  alpha * R/N * L* (1-(I+Q_2)/N) + chi * (a*R/(1+a*R))/N * U*(1-(I+Q_2)/N) - phi * R;                     %R
    opinion(5) =  lambda * D + lambda * U - phi * H;                                                                      %H
    
end
