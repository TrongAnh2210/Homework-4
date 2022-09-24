xA = 80 ;
yA = 30 ;
xB = 30 ;
yB =80 ;
l1 = 50 ;
l2 = 40 ;
for t = 0:0.01:1.1
    x = t^(3/2)+63;
    x2 = -(t^(3/2))+63;
    y = sqrt(abs(1-t^3+(t^2)/4))+t/2+20 ;
    y2 = -sqrt(abs(1-t^3+(t^2)/4))+t/2+20 ;
    c2_1 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2) ;
    c2_2 = (x2^2+y^2-l1^2-l2^2)/(2*l1*l2) ;
    c2_3 = (x2^2+y2^2-l1^2-l2^2)/(2*l1*l2) ;
    c2_4 = (x^2+y2^2-l1^2-l2^2)/(2*l1*l2) ;
    s2_1 = sqrt(abs(1-c2_1^2)) ;
    s2_2 = sqrt(abs(1-c2_2^2)) ;
    s2_3 = sqrt(abs(1-c2_3^2)) ;
    s2_4 = sqrt(abs(1-c2_4^2)) ;
    t2_1 = atan2(s2_1,c2_1);
    t2_2 = atan2(s2_2,c2_2);
    t2_3 = atan2(s2_3,c2_3);
    t2_4 = atan2(s2_4,c2_4);
    c1_1 = x*(l1+l2*c2_1)+y*(l2*c2_1);
    c1_2 = x2*(l1+l2*c2_2)+y*(l2*c2_2);
    c1_3 = x2*(l1+l2*c2_3)+y2*(l2*c2_3);
    c1_4 = x*(l1+l2*c2_4)+y2*(l2*c2_4);
    s1_1 = y*(l1+l2*c2_1)-x*l2*s2 ;
    s1_2 = y*(l1+l2*c2_2)-x2*l2*s2 ;
    s1_3 = y2*(l1+l2*c2_3)-x2*l2*s2 ;
    s1_4 = y2*(l1+l2*c2_4)-x*l2*s2 ;
    t1_1 = atan2(s1_1,c1_1);
    t1_2 = atan2(s1_2,c1_2);
    t1_3 = atan2(s1_3,c1_3);
    t1_4 = atan2(s1_4,c1_4);
    Px_1 = l1*cos(t1_1)+l2*cos(t1_1+t2_1) ;
    Py_1 = l1*sin(t1_1)+l2*sin(t1_1+t2_1) ;
    Px_2 = l1*cos(t1_2)+l2*cos(t1_2+t2_2) ;
    Py_2 = l1*sin(t1_2)+l2*sin(t1_2+t2_2) ;
    Px_3 = l1*cos(t1_3)+l2*cos(t1_3+t2_3) ;
    Py_3 = l1*sin(t1_3)+l2*sin(t1_3+t2_3) ;
    Px_4 = l1*cos(t1_4)+l2*cos(t1_4+t2_4) ;
    Py_4 = l1*sin(t1_4)+l2*sin(t1_4+t2_4) ;
    plot(Px_1,Py_1,'o');
    plot(Px_2,Py_2,'o')
    plot(Px_3,Py_3,'o')
    plot(Px_4,Py_4,'o')
    hold on 
end 