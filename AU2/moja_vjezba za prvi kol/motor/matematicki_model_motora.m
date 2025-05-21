br=1;
naz=[0.05 0.25 0.22];
[r,p,k]=residue(br,naz);
r1=-7.3521;
r2=7.3521;
p1=-3.8601;
p2=-1.1399;
t=0:0.1:10;
f=r1*exp(t*p1)+r2*exp(t*p2);
plot(t,f)
%%
% sa pocetnim uslovom w(0)=45.45 radC:\Users\DT User\Desktop\AU2/S
R=0.02;
Kt=0.02;
Kb=0.22;
R=1;
L=0.2;
IL=0.005;
br=[45.45*L 45.45*R];
naz=[L R Kt*Kb/IL];
[r,p,k]=residue(br,naz);
r1=-19.0444;
r2=64.4944;
p1=-3.8601;
p2=-1.1399;

t=0:0.1:10;
f=r1*exp(t*p1)+r2*exp(t*p2);
plot(t,f)
%%
%kad je pocetni napon 10
Kt=0.02;
Kb=0.22;
R=1;
L=0.2;
IL=0.005;
Brojnik = [10];
Nazivnik = [L*IL/Kt R*IL/Kt Kb 0];
[r,p,k] = residue(Brojnik,Nazivnik);
r1=19.0463;
r2=-64.5008;
r3=45.4545;
p1=-3.8601;
p2=-1.1399;
p3=0;
t=0:0.1:10;
f=r1*exp(t*p1)+r2*exp(t*p2)+r3*exp(t*p3);
plot(t,f)