x = [0, 1/64, 4/64, 9/64, 16/64, 25/64, 36/64, 49/64, 1];

y = sqrt(x);

zeta = (0:20)/20;

p = Esercizio1_11(x,y,zeta);


%punto a: calcolo il vettore colonna k


k = p' - zeta';

disp(k);

%punto b: traccio i grafici

x1 = linspace(0,1,1000);
y1 = sqrt(x1);
p1 = Esercizio1_11(x,y,x1);
plot(x1,p1,'linewidth',5)
hold on
plot(x1,y1,'linewidth',5);
legend('p(x)','sqrt(x)')
hold off;
