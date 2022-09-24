xA = 80 ;
yA = 30 ;
xB = 30 ;
yB =80 ;
l1 = 50 ;
l2 = 40 ;
for t = 0:0.01:14
    x = 5*(1+sin(6*t))*cos(t)+65 ;
    y = 5*(1+sin(6*t))*sin(t)+30 ;
    c2 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2) ;
    s2 = sqrt(abs(1-c2^2)) ;
    t2 = atan2(s2,c2);
    c1 = x*(l1+l2*c2)+y*(l2*c2);
    s1 = y*(l1+l2*c2)-x*l2*s2 ;
    t1 = atan2(s1,c1);
    Px = l1*cos(t1)+l2*cos(t1+t2) ;
    Py = l1*sin(t1)+l2*sin(t1+t2) ;
 
    plot(Px,Py,'o')
    hold on 
end 