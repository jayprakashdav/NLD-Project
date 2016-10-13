function dy = myODE(t,y,z)
b = z(1);
g = z(2);
dy = y;
dy(1) = -b*y(1)*y(2);
dy(2) = b*y(1)*y(2)-g*y(2);
dy(3) = g*y(2);



% 
% //code for numerical solution for differential equation system
% tspan = [0 20];
% b = 0.5;
% g = 1;
% [t,y] = ode45(@de_system, tspan,[90;10;0]);
% plot(t,y(:,1),'-o',t,y(:,2),'-o',t,y(:,1),'-o')
% title('Solution of van der Pol Equation (\mu = 1) with ODE45');
% xlabel('Time t');
% ylabel('Solution y');
% legend('y_1','y_2','y_3')
% 
% //code for differential equation sytem
% function dydt = de_system(t,y);
% dydt = [-(0.5)*y(2)*y(1); (0.5)*y(2)*y(1)-y(2);y(2)];
% //