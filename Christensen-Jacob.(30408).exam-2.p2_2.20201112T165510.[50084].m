function F=rhsExamPend(t,u)
%use
%u(1)=theta
%u(2)=thetadot

global omega0; %include our global constants
global alpha;
global tmax;

F=zeros(length(u),1);
F(1)=u(2); %our two differentials
F(2)=-(omega0.^(2).*sin(u(1)))+alpha.*sin(omega0.*(1-(t./tmax)).*t);
%wd(t)=omega0*(1-t/tmax)