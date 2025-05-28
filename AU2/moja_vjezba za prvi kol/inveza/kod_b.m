syms y x
f = 5*exp(2*x+3)-7;  % zamjena ln sa log
invF=solve(y==f,x);
invFunc=matlabFunction(invF);
y=[0,5,10,15,20,25,30,35,40,45,49,50,100,200,300,1000];
x=invFunc(y)

plot(y, x, 'bo-')
