function ode
t=0:0.001:5;   % time scalex
initial_t = 0;
initial_q = 10;
[g,x]=ode45( @(g,x) odefun(g,x), t, [initial_t, initial_q]);


function dqdt = odefun(t,q)
% Ta funkcja musi wejść do ODE45 lub podobnej
    x = q(1);
    v = q(2);
    global m0 s k;
    m0 = 10.0; % kg
    s = 10; % parametr s w sekundach.
    k = 100; % parametr 
    m = m0 * exp(-t/s);
    F = -k * x;
    
    a = F / m;
    
    dqdt = zeros (2,1);
    
    dqdt(1) = v;
    dqdt(2) = a;
end


plot(g,x,'-o');
xlabel('v'); ylabel('a');
drawnow;
end