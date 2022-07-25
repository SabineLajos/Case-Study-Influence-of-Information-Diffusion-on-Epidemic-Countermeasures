fun = @(op)opinionsystemdiff(op);


%op_2 = [0, 0, 0, 0, 0];
op_3 = [0.071, 0.001, 0.0031, 0.0091, 0.8];

options = optimoptions('fsolve', 'TolFun', 10^(-14), 'OptimalityTolerance', 10^(-14), 'TolX', 10^(-10));

%op_root_2 = fsolve(fun, op_2, options);
op_root_3 = fsolve(fun, op_3, options);

%Toms added code
IQ_0 = 0.02;
n = 100;

%Solve the nonlinear system of equations repeatedly
fun2 = @(op)opinion_I_Q_variable(op,IQ_0);
op_root_3 = fsolve(fun2, op_3, options);
A_Sol = op_root_3; 
mesh = linspace(0.9, 1.1, n);
for i = 1:n
    fun2 = @(op)opinion_I_Q_variable(op,mesh(i));
    op_root_3 = fsolve(fun2, op_3, options);
    A_Sol = [A_Sol; op_root_3];   
end
disp(A_Sol)

%Save minimal and maximal values
A_min_max(2,5) = -1;
for j =1:5
    A_min_max(1,j) = max(A_Sol(:,j));
    disp("Parameter")
    disp( j)
    disp("max: ")
    disp(max(A_Sol(:,j)))
    A_min_max(2,j) = min(A_Sol(:,j));
    disp("min: ")
    disp(min(A_Sol(:,j)))
end

%Check how close the solution is to 0 
absValue = Inf;
best_index = -1;
for i=1:n
    v = Calculate_NST_with_new_params(A_Sol(i,1), A_Sol(i,2), A_Sol(i,3), A_Sol(i,4), A_Sol(i,5));
    v_current = sum(abs(v));
    if (v_current  < absValue)
        best_index = i;
        absValue = v_current;
    end
end

disp('The best index was:')
disp(best_index)
disp('Which corresponds to the following parameters:')
best_params = A_Sol(best_index,:);
disp(best_params)
disp('The sum of the absolute value of the solution (difference from 0) is: ')
v = Calculate_NST_with_new_params(A_Sol(best_index,1), A_Sol(best_index,2), A_Sol(best_index,3), A_Sol(best_index,4), A_Sol(best_index,5));
disp(sum(abs(v)))
        
