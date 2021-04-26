function ode
t=0:0.001:5;   % time scalex
initial_x = 10;
initial_v = 10;
[t,x]=ode45( @odefun, t, [initial_x, initial_v]);


function dqdt = odefun(t,q)
% Ta funkcja musi wejść do ODE45 lub podobnej
% https://www.eng.auburn.edu/~tplacek/courses/3600/ode45berkley.pdf
    x = q(1);
    v = q(2);
    
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


plot(t,x(:,1));
xlabel('t'); ylabel('x');
drawnow;
end