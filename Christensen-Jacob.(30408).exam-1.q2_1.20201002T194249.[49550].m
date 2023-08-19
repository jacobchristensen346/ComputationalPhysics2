%% --Exam1 Question 2--
%42.3 initial velocity and 78 degree angle gets a hit
%46.0 initial velocity and 80 degree angle gets a hit
%71.2 initial velocity and 86 degree angle gets a hit

%Note: I set up the solutions to each part (a-e) to be able to be ran
%separately using Run Section.
%% PART A


clear; close all
x=-50:0.5:50; %make list of x values
N=length(x);  
f=zeros(size(x)); %create array for elevation values
for n=1:N
    f(n)=elevation(x(n)); %replace each element in f with elevation height corresponding to x array value
end                      
plot(35,elevation(35),'*') %plot point at x=35 with corresponding height
hold on
plot(-35,elevation(-35),'*') %likewise for x=-35
plot(x,f)
axis equal
grid on
xlabel('x position')
ylabel('y position')
title('fortress game')
legend('castle 1','castle 2')
hold on

%% PART B

%I copied the code from part a so that this section can be ran on its own

%--------------------------part a----------------------------------

clear; close all
x=-50:0.5:50; %make list of x values
N=length(x);  
f=zeros(size(x)); %create array for elevation values
for n=1:N
    f(n)=elevation(x(n)); %replace each element in f with elevation height corresponding to x array value 
end                       
plot(35,elevation(35),'*') %plot point at x=35 with corresponding height
hold on
plot(-35,elevation(-35),'*') %likewise for x=-35
plot(x,f)
axis equal
grid on
xlabel('x position')
ylabel('y position')
title('fortress game')
legend('castle 1','castle 2','AutoUpdate','off')
hold on

%------------------part b-----------------------------------------------

vo=input('Enter an initial velocity: '); %user input
theta=input('Enter an angle from the horizontal in degrees: ');
tau=0.1; %time steps
g=10; %gravity

vx=vo*cosd(theta); %set initial conditions
vy=vo*sind(theta);
x=-35;
y=elevation(-35);

while (x<=100&&x>=-100) && y>=-100 %set limits so we don't go on forever      
    x=x+vx*tau; %iterate x, y, vx, vy values with Euler's method
    y=y+vy*tau;
    vy=vy-(g*tau);
     
    plot(x,y,'r.') %plotting a point each loop (each frame)
    pause(0.01)
end

%% PART C

%I copied the code from part a so that this section can be ran on its own

%--------------------------part a----------------------------------

clear; close all
x=-50:0.5:50; %make list of x values
N=length(x);  
f=zeros(size(x)); %create array for elevation values
for n=1:N
    f(n)=elevation(x(n)); %replace each element in f with elevation height corresponding to x array value
end                       
plot(35,elevation(35),'*') %plot point at x=35 with corresponding height
hold on
plot(-35,elevation(-35),'*') %likewise for x=-35
plot(x,f)
axis equal
grid on
xlabel('x position')
ylabel('y position')
title('fortress game')
legend('castle 1','castle 2','AutoUpdate','off')
hold on

%------------------part c-----------------------------------------------

vo=input('Enter an initial velocity: '); %user input
theta=input('Enter an angle from the horizontal in degrees: ');
tau=0.1; %time steps
g=10; %gravity

vx=vo*cosd(theta); %set initial conditions
vy=vo*sind(theta);
x=-35;
y=elevation(-35);

while x<100 %this condition is simply set to let us go through the loop. We stop well before x=100 (x=50)
    if y+vy*tau<elevation(x+vx*tau) || (x>50||x<-45) %here is the check if the projectile either hits the ground or goes out of range
        disp('you missed')
        break
    end
    x=x+vx*tau; %iterate x, y, vx, vy values with Euler's method
    y=y+vy*tau;
    vy=vy-(g*tau);
     
    plot(x,y,'r.') %plotting a point each loop (each frame)
    pause(0.01)
end

%% PART D

%I copied the code from part a so that this section can be ran on its own

%--------------------------part a----------------------------------

clear; close all
x=-50:0.5:50; %make list of x values
N=length(x);  
f=zeros(size(x)); %create array for elevation values
for n=1:N
    f(n)=elevation(x(n)); %replace each element in f with elevation height corresponding to x array value
end                       
plot(35,elevation(35),'*') %plot point at x=35 with corresponding height
hold on
plot(-35,elevation(-35),'*') %likewise for x=-35
plot(x,f)
axis equal
grid on
xlabel('x position')
ylabel('y position')
title('fortress game')
hold on

%------------------part d-----------------------------------------------

miss=1; %Set a new variable to loop until a hit is made

while miss==1
    vo=input('Enter an initial velocity: '); %user input
    theta=input('Enter an angle from the horizontal in degrees: ');
    tau=0.1; %time steps
    g=10; %gravity
    
    vx=vo*cosd(theta); %set initial conditions within loop
    vy=vo*sind(theta);
    x=-35;
    y=elevation(-35);
    while x<100 %this condition is simply set to let us go through the loop. We stop well before x=100 (x=50)
        d=(((x+vx*tau)-35)^2+((y+vy*tau)-elevation(35))^2)^(1/2); %distance equation to check if projectile is near right castle
        if d<=1 %if within 1 unit
            disp('You hit!')
            miss=0;
            break
        end 
        
        if y+vy*tau<elevation(x+vx*tau) || (x>50||x<-45) %here is the check if the projectile either hits the ground or goes out of range
            disp('you missed')
            break
        end
        
        x=x+vx*tau; %iterate x, y, vx, vy values with Euler's method
        y=y+vy*tau;
        vy=vy-(g*tau);
     
        plot(x,y,'r.') %plotting a point each loop (each frame)
        pause(0.01)
    end
end

%42.3 initial velocity and 78 degree angle gets a hit
%46.0 initial velocity and 80 degree angle gets a hit
%71.2 initial velocity and 86 degree angle gets a hit

%% PART E

%I copied the code from part a so that this section can be ran on its own

%--------------------------part a----------------------------------

clear; close all
x=-50:0.5:50; %make list of x values
N=length(x);  
f=zeros(size(x)); %create array for elevation values
for n=1:N
    f(n)=elevation(x(n)); %replace each element in f with elevation height corresponding to x array value
end                       
plot(35,elevation(35),'*') %plot point at x=35 with corresponding height
hold on
plot(-35,elevation(-35),'*') %likewise for x=-35
plot(x,f)
axis equal
grid on
xlabel('x position')
ylabel('y position')
title('fortress game')
legend('castle 1','castle 2','AutoUpdate','off')
hold on

%------------------part d-----------------------------------------------

miss=1; %Set a new variable to loop until a hit is made

while miss==1
    count=0; %new variable to keep track of time (for the ODE plot)
    
    vo=input('Enter an initial velocity: '); %user input
    theta=input('Enter an angle from the horizontal in degrees: ');
    tau=0.1; %time steps
    g=10; %gravity
    
    vx=vo*cosd(theta); %set initial conditions within loop
    vy=vo*sind(theta);
    x=-35;
    y=elevation(-35);
    
    while x<100
        count=count+1; %iterate count for each tau step
        d=(((x+vx*tau)-35)^2+((y+vy*tau)-elevation(35))^2)^(1/2); %distance equation to check if projectile is near right castle
        if d<=1 %if within 1 unit
            disp('You hit!')
            miss=0;
            break
        end 
        
        if y+vy*tau<elevation(x+vx*tau) || (x>50||x<-45) %here is the check if the projectile either hits the ground or goes out of range
            disp('you missed')
            break
        end
        
        x=x+vx*tau; %iterate x, y, vx, vy values with Euler's method
        y=y+vy*tau;
        vy=vy-(g*tau);
     
        plot(x,y,'r.') %plotting a point each loop (each frame)
        pause(0.01)
    end
end

%Now we plot the more accurate solution!

tstart=0;tfinal=tau*count; %set time based on Euler's method time

global grav; %set gravity as global
grav=10;
u0=zeros(4,1); %create u0 columns
u0(1)=-35; %initial x
u0(2)=elevation(-35); %initial y
u0(3)=vo*cosd(theta); %initial vx
u0(4)=vo*sind(theta); %initial vy

options=odeset('RelTol',1e-8);

[t,u]=ode45(@rhsE,[tstart,tfinal],u0,options); %solve for values

x1=u(:,1); y1=u(:,2); %get the values for x and y
hold on
plot(x1,y1) 

    