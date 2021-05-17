function ode
t=0:0.00001:3;   % time scalex
initial_t = 10;
initial_q = 10000;

[q,x] =ode23( @(g,x) odefun(g,x), t, [initial_t, initial_q]);


function dqdt = odefun(t,q)
% Ta funkcja musi wejść do ODE45 lub podobnej
    x = q(1);
    v = q(2);
    global m0 s k;
    m0 = 30.0; % kg
    s = 1; % parametr s w sekundach.
    k = 10; % parametr 
    m = m0 * exp(-t/s);
    F = -k * x;
    
    a = F / m;
    
    dqdt = zeros (2,1);
    
    dqdt(1) = v;
    dqdt(2) = a;
end

%Filtrowanie wyniku
idx = x(:,2)>0;
PosVals = x(idx,2);
%plot(q,x(:,2));


plot(q(1:length(PosVals)),PosVals);
%plot(g,x);
xlabel('t'); ylabel('v');
drawnow;

end