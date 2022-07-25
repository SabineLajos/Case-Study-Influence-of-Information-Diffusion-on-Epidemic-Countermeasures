function opinion = opinion_I_Q_variable(op, ratio_IQ_0)
    
    %define variables which we are going to optimize over
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
    ratio_I_Q = ratio_IQ_0;
    N   = L + R + U + D + H;
%ODE system

    opinion(1) = -alpha * R/N * L*(1-ratio_I_Q) - alpha * U/N * L - alpha * D/N * L*(1+ratio_I_Q) + phi * R + phi * H;    %L
    opinion(2) =  alpha * U/N * L-  chi* (a*R/(1+a*R))/N * U *(1-ratio_I_Q) - chi * D/N * U*(1+ratio_I_Q) - lambda * U;   %U
    opinion(3) =  alpha * D/N * L*(1+ratio_I_Q) + chi * D/N * U*(1+ratio_I_Q) - lambda * D;                               %D
    opinion(4) =  alpha * R/N * L* (1-ratio_I_Q) + chi * (a*R/(1+a*R))/N * U*(1-ratio_I_Q) - phi * R;                     %R
    opinion(5) =  lambda * D + lambda * U - phi * H;                                                                      %H
    
end