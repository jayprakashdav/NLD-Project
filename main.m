syms s inf r;
y1 = [s inf r];

% inintial conditions
s0 = 90;
inf0 = 10;
r0 = 0;

% normalized population ratios such  that infected+recovered+suspected = 1
total = s0+inf0+r0;
ns = s0/total;
ninf = inf0/total;
nr = r0/total;

% now initializing the values of beta(b) and gamma(g)
b = 1.8;
g = 0.9;
z=[b g];


% code for numerical solution for differential equation system
tspan = [0 20];
[t,y] = ode45(@(t,y1) myODE(t,y1,z),tspan,[ns;ninf;nr]);

plot(t,y(:,1),'r',t,y(:,2),'g',t,y(:,3),'b')
title('Solution of indectious disease with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('Suspected','Infected','Recovered')
