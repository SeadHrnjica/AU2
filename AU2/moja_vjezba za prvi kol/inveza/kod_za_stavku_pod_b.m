syms x y
f = 50*(1 - exp(-0.005*x));
inv_f = solve(y == f, x);
inv_func = matlabFunction(inv_f);
y_vals = [5, 10, 15];
x_vals = inv_func(y_vals)
%%
syms y x
f=50*(1-exp(-0.005*x));
inv_f=solve(y==f,x)
invFunc=matlabFunction(inv_f)
y=[0,5,10,15,20,25,30,35,40,45,49];
x=invFunc(y)
%%
syms x y
eqn = y == x + 3*exp(-x);
inv_f = solve(eqn, x)

%%



syms y x
f=3*(1+exp(2*x));
invf=solve(y==f,x);
invFunc=matlabFunction(invf);
y=[3,4,5,10,15,20,25,30,35,40,45,49,50];
x=invFunc(y)

