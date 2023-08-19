%% Problem 1

N=8192; %number of points in series
tau=1000/(N-1); %define tau so that our last point is t=1000
t=0:tau:(N-1)*tau;
length(t)

%first evaluate with d=10
f=(1/10)*(cos(t)+3*cos(2*t)+5*cos(3*t)).*exp(-((t-500).^2)/10^2); %given function for d=10
plot(t,f) %plot it versus time
xlabel('time')
ylabel('function value')
title('time series for d=10 and d=100')
hold on
%now with d=100
f1=(1/100)*(cos(t)+3*cos(2*t)+5*cos(3*t)).*exp(-((t-500).^2)/100^2); %given function for d=100
plot(t,f1)
legend('d=10','d=100')
xlim([300,700])
hold off

%now plot for the power spectrum
%first for d=10
dw=2*pi/(N*tau); %build our frequency array
w=0:dw:2*pi/tau-dw;
g=fft(f); %take fourier transform
P=abs(g).^2; %power spectrum
figure
plot(w,P) %plot power spectrum versus angular frequency
xlabel('\omega')
ylabel('P(\omega)')
title('Plot of Power Spectrum with d=10 and 100')
hold on

%now for d=100
g1=fft(f1); %take fourier transform
P1=abs(g1).^2; %power spectrum
plot(w,P1)
legend('d=10','d=100')

%here is a zoomed in graph for the non-aliased frequencies on the left
figure
plot(w,P) %plot for d=10
xlabel('\omega')
ylabel('P(\omega)')
title('Plot of Power Spectrum with d=10 and 100 (left frequencies)')
xlim([0,6])
hold on
plot(w,P1) %plot for d=100
legend('d=10','d=100')

%First bullet point
%Due to the uncertainty principle, a change in the width of the time signal
%changes the width of the frequency peaks as well. When you confine your
%signal to a shorter time, the frequency peaks will broaden. If you span
%your signal over a larger time, the frequency peaks will tighten.

%Second bullet point
%The fft function runs fastest when given data sets with numbers associated
%with powers of 2. Here, 8192 is 2^13.

%Third bullet point
%To increase spectral resolution you can take more data points for your
%time series, since frequency step size is inversely proportional to
%tfinal=N*tau, where N is the number of data points.