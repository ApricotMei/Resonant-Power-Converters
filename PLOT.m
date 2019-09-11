f0 = 104400;	%f0 = 104.4kHz
f = 52200:156600; 

n = 0.9;	%n_Ir = 90%

w = 2 * pi * f;
w0 = 2 * pi * f0;

Q_L1 = 2;	%change Q_L1 to 2
M1 = n./ sqrt(1 + Q_L1.^ 2 * ( w./ w0 - w0./ w).^ 2);

 
Q_L2 = 5;	%change Q_L1 to 5
M2 = n./ sqrt(1 + Q_L2.^ 2 * ( w./ w0 - w0./ w).^ 2);


Q_L3 = 10;   %change Q_L1 to 10
M3 = n./ sqrt(1 + Q_L3.^ 2 * ( w./ w0 - w0./ w).^ 2);

plot(w / w0, M1, w / w0, M2, w / w0, M3, 'LineWidth', 2)

legend('Q_L=2','Q_L=5','Q_L=10'); 
xlabel('f/f0');
ylabel('|Mvr|');
set(gca,'FontSize',15);

