# Homework-4
l1=40;
l2=50;
l3=40;
for t= 0:0.01:1
    x=30+40*t;
    y=30+40*t;
    z=30;
    t1= atan2(-x,y);
    s1=sin(t1);
    c1=cos(t1);
    A=z-l1;
    B= -(x/s1);
    c3=(A^2+B^2-l2^2-l3^2)/(2*l2*l3);
    s3=sqrt(abs(1-c3^2));
    t3=atan2(s3,c3);
    c2=(B*(l3*c3+l2)+A*l3*s3)/((l3*c3+l2)^2+(l3*s3)^2);
    s2=(A*(l3*c3+l2)-B*l3*s3)/((l3*c3+l2)^2+(l3*s3)^2);
    t2=atan2(s2,c2);
    Px=(-s1)*(l2*c2+(cos(t2+t3))*l3);
    Py=c1*(l2*c2+l3*cos(t2+t3));
    Pz=l1+l2*s2+l3*sin(t2+t3);
     subplot( 2 ,2 ,1);
    plot(t,t1,'.');
    xlabel('time(s)')
    ylabel ('t1')
    grid on
    hold on 
     subplot( 2 ,2 ,2);
    plot(t,t2,'.');
    xlabel('time(s)')
    ylabel ('t2')
    grid on
    hold on
     subplot( 2 ,2 ,3);
    plot(t,t3,'.');
    xlabel('time(s)')
    ylabel ('t3')
    grid on
    hold on
     subplot( 2 ,2 ,4);
    plot3(Px,Py,Pz,'.');
    xlabel('Px(cm)')
    ylabel ('Py(cm)')
    zlabel ('Pz(cm)')
    grid on
    hold on
end 
