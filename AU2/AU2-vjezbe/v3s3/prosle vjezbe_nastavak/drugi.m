Kt=0.02;
Kb=0.22;
R=1;
L=0.2;
IL=0.005;
br=[45.45*L 45.45*R];
na=[L R Kt*Kb/IL];
[r,p,k]=residue(br,na);
r1=-19.0444;
r2= 64.4944;
p1=-3.8601;
p2=-1.1399;
t=0:0.1:10;
omega_t=-19.044*exp(-t*3.8601)+64.4944*exp(-t*1.399);
plot(t,omega_t);
title('rad motora s pocetnim uslovima');
xlabel('vijeme');
grid on;
%%
%kad je pocetni napon 10
Kt=0.02;
Kb=0.22;
R=1;
L=0.2;
IL=0.005;
br=[10];
na=[L*IL/Kt R*IL/Kt Kb 0];
[r,p,k]=residue(br,na)
r1=19.0463;
r2= -64.5008;
r3= 45.4545;
p1=-3.8601;
p2=-1.1399;
p3=0;
t=0:0.1:10;
omega_t=19.0463*exp(-t*3.8601)-64.5008*exp(-t*1.1399)+45.4545;
plot(t,omega_t);
title('rad motora s pocetnim uslovima');
xlabel('vijeme');
ylabel('broj okretaja');
grid on;
%%
