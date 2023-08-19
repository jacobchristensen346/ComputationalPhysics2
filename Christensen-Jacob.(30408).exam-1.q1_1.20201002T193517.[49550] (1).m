%% --Exam1 Question 1--

x=-2:0.05:2; y=-2.5:0.05:2.5;   %make a grid
zo=1.6; k=2*pi; Eo=1;           %define constants
[X,Y]=meshgrid(x,y);

Yo=exp(-(k.*(X.^2+Y.^2))./(2.*zo)); %define function on the grid
Ex=Yo; %X component of electric field
Ey=((X.*Y)/(2.*zo^2)).*Yo; %Y component of electric field
Ez=(X./zo).*Yo; %Z component of electric field (imaginary)
E=sqrt(Ex.^2+Ey.^2); %Code to define each component as a unit vector, helps to see quiver plot
Ux=Ex./E; %calculating unit x and y values
Uy=Ey./E;

yy=-2.5:0.7:2.5; xx=-2*ones(size(yy)); %initial conditions for streamline plots

surf(X,Y,Ez); %surface plot for z
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')
title('Plot of z component on xy plane')

figure
surf(X,Y,Ey); %surface plot for y
xlabel('x axis')
ylabel('z axis')
zlabel('y axis')
title('Plot of y component on xz plane')

figure
surf(X,Y,Ex); %surface plot for x
xlabel('y axis')
ylabel('z axis')
zlabel('x axis')
title('Plot of x component on yz plane')

figure
quiver(X,Y,Ex,Ey) %electric field on x and y plane
streamline(X,Y,Ex,Ey,xx,yy,[1e-3,1e5]); %set up streamlines
xlabel('x component')                              
ylabel('y component')
title('Electric Field (Gaussian Laser Focus Waist, x and y plane)')

figure
quiver(X,Y,Ux,Uy) %Unit vector field
streamline(X,Y,Ex,Ey,xx,yy,[1e-3,1e5]);
xlabel('x component')
ylabel('y component')
title('Electric Field (unit vectors)')
axis equal

%A vector field shows the magnitude and direction of a physical quantity
%at specified points of a coordinate system, in this case the magnitude and
%direction of an electric field at discrete locations.

%The streamline command takes initial values and coordinate values as input, and outputs
%continuous curves along a path dictated by the the initial values and direction of the vectors
%seen in a quiver plot.

