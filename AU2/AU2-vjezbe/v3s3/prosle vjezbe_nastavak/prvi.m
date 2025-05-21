brojnik=1;
nazivnik=[0.05 0.25 0.22];
[r,p,k]=residue(brojnik,nazivnik);
r1 = -7.3521;
r2 = 7.3521;
p1 = -3.8601;
p2 = -1.1399;
t=0:0.1;10;
g=r1*exp(p1*t)+r2*exp(p2*t);
g=(-7.3521*exp(-t.*3.8601)+7.3521*exp(-t.*1.1399));
plot(t,g)
grid on;