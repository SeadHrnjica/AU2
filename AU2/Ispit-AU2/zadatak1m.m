brojnik = [0.0005 0.01 0 1];
nazivnik = [0.00075 4.01 0.1 2];

H = tf(brojnik, nazivnik);

step(H)