xA = 80 ;
yA = 30 ;
xB = 30 ;
yB =80 ;
l1 = 50 ;
l2 = 40 ;
for t = 0:0.01:100
    axis([60 70 20 70]);
    x = (sin(t)*(2.71828^(cos(t))-2*cos(4*t)-(sin(t/12))^5)+65) ;
    y = (cos(t)*(2.71828^(cos(t))-2*cos(4*t)-(sin(t/12))^5)+30);
    c2 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2) ;
    s2 = sqrt(abs(1-c2^2)) ;
    t2 = atan2(s2,c2);
    c1 = x*(l1+l2*c2)+y*(l2*c2);
    s1 = y*(l1+l2*c2)-x*l2*s2 ;
    t1 = atan2(s1,c1);
    Px1 = l1*cos(t1) ;
    Py1 = l1*sin(t1) ;
    Px = l1*cos(t1)+l2*cos(t1+t2) ;
    Py = l1*sin(t1)+l2*sin(t1+t2) ;
    L1 = plot([0 Px1],[0 Py1],'r' );
    hold on
    L2 = plot([Px1 Px],[Py1 Py],'r' );
    hold on
    plot(Px,Py,'o')
    pause(0.01);
    hold on 
    delete(L1);
    delete(L2);
end 