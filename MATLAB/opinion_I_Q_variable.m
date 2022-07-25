function opinion = opinion_I_Q_variable(op, ratio_IQ_0)
    
    %define variables which we are going to optimize over
    alpha      = op(1);
    phi        = op(2);
    chi        = op(3);
    lambda     = op(4);
    %mu         = op(5);
    
    a          = op(5);
    %b         = op(6);

%parameter
  
    L   = 100;
    R   = 5215000;
    U   = 1694000;
    D   = 31556000;
    H   = 31556000;
    ratio_I_Q = ratio_IQ_0;
    %I   = 500000;
    %Q_2 = 25000;
    N   = L + R + U + D + H;
    %a   = 1
    %b   = 5
%ODE system

    opinion(1) = -alpha * R/N * L*(1-ratio_I_Q) - alpha * U/N * L - alpha * D/N * L*(1+ratio_I_Q) + phi * R + phi * H;    %L
    opinion(2) =  alpha * U/N * L-  chi* (a*R/(1+a*R))/N * U *(1-ratio_I_Q) - chi * D/N * U*(1+ratio_I_Q) - lambda * U;   %U
    opinion(3) =  alpha * D/N * L*(1+ratio_I_Q) + chi * D/N * U*(1+ratio_I_Q) - lambda * D;                               %D
    opinion(4) =  alpha * R/N * L* (1-ratio_I_Q) + chi * (a*R/(1+a*R))/N * U*(1-ratio_I_Q) - phi * R;                     %R
    opinion(5) =  lambda * D + lambda * U - phi * H;                                                                      %H
    
end