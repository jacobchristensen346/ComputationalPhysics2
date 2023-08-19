%% Exam2Problem2

%The pendulum seems to flip at the 140 second mark
%We were not able to get the pendulum to flip using a constant driving
%frequency because pendulums are not simple harmonic oscillators past
%small angles. This means that a constant driving frequency will inevitably
%start fighting against the pendulum as the pendulum's motion becomes
%non-sinusoidal. In the lab we saw how the pendulum would increase in
%amplitude to a certain point but then decrease back down towards zero, in
%a similar pattern to what we see with acoustic beating.

%A time varying forcing frequency, on the other hand, will
%still have a chance to work with the pendulum's motion as it enters the
%non-sinusoidal realm. As we can see from our solution, it can sometimes
%take awhile for the two to work together enough to flip over the
%pendulum.

clear;close all;
tstart=0;tfinal=200; %set time span
global omega0; omega0=1; %set natural frequency as global
global alpha; alpha=0.1; %set forcing amplitude as global
global tmax; tmax=900; %set maximum time as global
thetadot0=0;theta0=0.2;
u0=zeros(2,1); %create u0 columns
u0(1)=theta0; %initial theta position
u0(2)=thetadot0; %initial angular frequency
options=odeset('RelTol',1e-8);
[t,u]=ode45(@rhsExamPend,[tstart,tfinal],u0,options); %solve for values
theta=u(:,1); %get values for position
figure
plot(t,theta) %plot theta(t) on t domain
xlabel('time')
ylabel('\theta(t)')
title('driven pendulum')