Kp=0.2;
Ti=0.09;

G=tf([Kp*Ti Kp],[Ti 0]);
Gz=c2d(G, 0.015);
Gob=tf([18.6997],[0.144528 1]);
Gobz=c2d(Gob,0.015);
Gek=feedback(Gz*Gobz,1);
pzmap(Gek);
%%
Kp=1.5;
Ti=0.8;

G=tf([Kp*Ti Kp],[Ti 0]);
Gz=c2d(G, 0.015);
Gob=tf([18.6997],[0.144528 1]);
Gobz=c2d(Gob,0.015);
Gek=feedback(Gz*Gobz,1);
pzmap(Gek);
%%
Kp=0.1;
Ti=0.075;

G=tf([Kp*Ti Kp],[Ti 0]);
Gz=c2d(G, 0.015);
Gob=tf([18.6997],[0.144528 1]);
Gobz=c2d(Gob,0.015);
Gek=feedback(Gz*Gobz,1);
pzmap(Gek);
%%
Kp=1;
Ti=0.2;

G=tf([Kp*Ti Kp],[Ti 0]);
Gz=c2d(G, 0.015);
Gob=tf([18.6997],[0.144528 1]);
Gobz=c2d(Gob,0.015);
Gek=feedback(Gz*Gobz,1);
pzmap(Gek);
%%
Kp=0.5;
Ti=0.15;

G=tf([Kp*Ti Kp],[Ti 0]);
Gz=c2d(G, 0.015);
Gob=tf([18.6997],[0.144528 1]);
Gobz=c2d(Gob,0.015);
Gek=feedback(Gz*Gobz,1);
pzmap(Gek);