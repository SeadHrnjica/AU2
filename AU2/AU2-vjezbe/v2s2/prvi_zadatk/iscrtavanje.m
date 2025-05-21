plot(t,Napon(:,1),'r--',t,Napon(:,2),'m');
grid on;
legend('Ulazni napon','Brzina');
xlabel('Vrijeme');
ylabel('Napon, Brzina');
title('zavisnost brzine o naponu');
figure
plot(t,Momenti);
grid on;
legend('Ukupni momenti','dinamicki moment','memnt terta');
xlabel('Momenti');
grid on;