%% Exam2Problem3

clear;close all;

dx=10^-2; %step size, found that n=2 is the smallest integer for which
%the difference asked for is less than 10^-5 for all points
x=0:dx:10; %make x array, with step size dx=10^-n
f=besselj(0,x); %bessel function, zero order, first kind
N=length(x); %for use inside our centered derivation

dfdx(2:N-1)=(f(3:N)-f(1:N-2))/(2*dx); %do our centered derivation with colon command

%now we need to find the endpoints by linear extrapolation
%since using the centered derivation approximation would require 
%us to index outside of our array size

dfdx(1)=2*dfdx(2)-dfdx(3); %end point 1
dfdx(N)=2*dfdx(N-1)-dfdx(N-2); %end point N

%Now we have to find the anlytical solution to compare against
%let's find it using mathematica... turns out the first derivative is 
%-BesselJ[1, x]

dfdxA=-besselj(1,x); %define the actual derivative on x

%let's plot these two derivatives

plot(x,dfdx) %first the approx.
xlabel('x value')
ylabel('bessel function value')
title('Plot of Bessel Approximate and Exact Derivatives')
hold on
plot(x,dfdxA) %now the actual
legend('approx','actual')
hold off

%we see that they overlap, they are very close
%let's plot their difference
figure
plot(x,dfdxA-dfdx) %plot the difference
xlabel('x value')
ylabel('difference value')
title('Difference Between Exact and Approx Derivative')

