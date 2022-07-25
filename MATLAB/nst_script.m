v = Calculate_NST_with_new_params(0.0710000251977449,  3.77182439384031e-05, 0.00308691889009410, 7.95264625670957e-05, 1.28863882062860 );
disp(sum(abs(v)))

disp('v_2')
v2 = Calculate_NST_with_new_params(7.70804400724824e-08, 1.70779898173914e-13, -1.99178619287937e-12, 1.42472833225980e-13, 0.800000000000000);
disp(sum(abs(v2)))

disp('our values: ')
v3 = Calculate_NST_with_new_params(0.071, 1.9685e-5, 0.0031, 4.2972e-5, 0.8);
disp(sum(abs(v3)))