OtPmin=99;
OtPmax=101;
naz=21; %nazivna vrijednsot, bude definisano
razlika=(OtPmax-OtPmin)/(naz-1);

OtP=OtPmin:razlika:OtPmax; %Otpornost pretvarraca

R(1)=100;
R(2)=100;
R(3)=1e5;
R(4)=100;
E=1;

%petlja varijacija otpornosti pretvaraca
for c=1:naz
R(5)=OtP(c);

mR(1,1)=R(2)+R(5);
mR(1,2)=-R(2);
mR(1,3)=-R(5);
mR(2,1)=-R(2);
mR(2,2)=R(1)+R(2)+R(3);
mR(2,3)=-R(3);
mR(3,1)=-R(5);
mR(3,2)=-R(3);
mR(3,3)=R(3)+R(4)+R(5);

EMS(1)=E;
EMS(2)=0;
EMS(3)=0;

i=mR\EMS';

ir(1)= i(2);
ir(2)= i(1)-i(2);
ir(3)= i(2)-i(3);
ir(4)= i(3);
ir(5)= i(1)-i(3);

pR=ir.*R;
vd(c)=pR(5);
end
figure(1);
plot(OtP,vd*1000);
grid on;
%%


