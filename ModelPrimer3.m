M=[x1.data,x2.data,x3.data];x = M(:,1); 
y = M(:,2); 
z = M(:,3); 

xi = linspace(min(x),max(x),200); 
yi = linspace(min(y),max(y),200); 
[X Y] = meshgrid(xi, yi); 
Z = griddata(x,y,z, X,Y, 'cubic'); 
surf(X,Y,Z,'FaceAlpha',0.5) 
shading interp