% Plotting V(t) and X(t) functions from a differential equation
t= linspace (0,20, 100000);
y=  49*t + (245*exp(-t/5)) -245;
y1 = @(t) 49*t + (245*exp(-t/5)) -245;

v = 49*(1-exp(-t/5));
v1 = @(t) 49*(1-exp(-t/5));


f = @(t) y1(t) - 300;
solut = fzero (f, 5)

figure(1)
subplot(1,2,1)
plot(t,y, 'linewidth', 2, "b.")
xlabel('t')
ylabel('X(t)')

%figure(2)
subplot(1,2,2)
plot(t,v, 'linewidth', 2, "b.")
xlabel('t')
ylabel('V(t)')
