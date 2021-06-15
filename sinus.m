f = @(x) sind(x);
x = 0:360;
y = 0:30:360;
figure(1);
clf;
plot(x,f(x))
plot(y,f(y), 'o','markersize',22,'markerfacecolor','y','markeredgecolor','r')
text(z-5,f(z),string(z),'fontsize',7)
hold on;
xlim([0,360]);
grid minor;
grid on;
