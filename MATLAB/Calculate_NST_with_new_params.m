function nst = Calculate_NST_with_new_params(alpha,  phi, chi,  lambda, a )
    L   = 100;
    R   = 5215000;
    U   = 1694000;
    D   = 31556000;
    H   = 31556000;
    I   = 5000000;
    Q_2 = 15000000;
    N   = L + R + U + D + H;

    res1 = -alpha * R/N * L*(1-(I+Q_2)/N) - alpha * U/N * L - alpha * D/N * L*(1+(I+Q_2)/N) + phi * R + phi * H;    %L
    res2 =  alpha * U/N * L-  chi* (a*R/(1+a*R))/N * U *(1-(I+Q_2)/N) - chi * D/N * U*(1+(I+Q_2)/N) - lambda * U;   %U
    res3 =  alpha * D/N * L*(1+(I+Q_2)/N) + chi * D/N * U*(1+(I+Q_2)/N) - lambda * D;                               %D
    res4 =  alpha * R/N * L* (1-(I+Q_2)/N) + chi * (a*R/(1+a*R))/N * U*(1-(I+Q_2)/N) - phi * R;                     %R
    res5 =  lambda * D + lambda * U - phi * H;
    
    nst = [res1, res2, res3, res4, res5];
    disp(nst)
end

