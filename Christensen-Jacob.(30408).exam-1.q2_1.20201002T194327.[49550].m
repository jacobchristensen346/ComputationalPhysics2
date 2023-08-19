function F=rhsE(t,u)
%use 
%u(1)->x
%u(2)->y
%u(3)->vx
%u(4)->vy
global grav;

F=zeros(length(u),1);
F(1)=u(3); %dx/dt=vx
F(2)=u(4); %dy/dt=vy
F(3)=0; %dvx/dt=0
F(4)=-grav; %dvy/dt=-gravitational acceleration