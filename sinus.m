f = @(x) sind(x);

x = 0:360;
y = 0:30:360;
z = [0:30:360];
figure(1);
clf;
plot(x,f(x))
hold on;
plot(y,f(y), 'or')
text(z,f(z),string(z))
xlim([0,360]);
grid minor;
grid on;