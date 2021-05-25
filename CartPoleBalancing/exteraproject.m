% Extera Project of D.r Moeen Fard
% code by Farzad Azizizade
% 9512424248
clear
close all
clc
tt=input('Please enter the end of time from 0 to end:   ');
ap=[0:0.001:2.*pi];
xa=(40.*pi)./180;
r=0.5;
[T AA]=ode45(@teta_and_x,[0 tt],[xa,0,0,0]);
aa=AA(:,1);
aa2=AA(:,2);
aaa=AA(:,3);
aaa2=AA(:,4);
L=3;
%modd=[];
for nn=1:length(T);
    clf
    x=r.*cos(ap)+r+aaa(nn);
    y=r.*sin(ap)+r;
    plot(x,y,'linewidth',3,'color','red')
    hold on
    x=r.*cos(ap)+4.*r+aaa(nn);
    y=r.*sin(ap)+r;
    plot(x,y,'linewidth',3,'color','red')
    hold on
    x=r.*cos(ap)+7.*r+aaa(nn);
    y=r.*sin(ap)+r;
    plot(x,y,'linewidth',3,'color','red')
    hold on
    rectangle('Position',[0+aaa(nn),2.*r,8.*r,4.*r],'linewidth',3)
    hold on
    mod=force(aa(nn),aa2(nn));
    %modd=[modd;mod];
    XX=[8.*r+aaa(nn) 10.*r+aaa(nn)];
    FXX=[3.*r 3.*r];
    line(XX,FXX,'linewidth',3,'color','green')
    hold on
    XX2=[8.*r+aaa(nn) 8.*r+aaa(nn)+0.4 8.*r+aaa(nn)+0.4];
    XX3=[10.*r+aaa(nn) 10.*r+aaa(nn)-0.4 10.*r+aaa(nn)-0.4];
    FXX2=[3.*r 3.*r+0.2 3.*r-0.2];
    FXX3=[3.*r 3.*r+0.2 3.*r-0.2];
    if mod>=0
    TRI=[1 2 3];
    triplot(TRI,XX3,FXX3,'linewidth',3,'color','green')
    else
    TRI=[1 2 3];
    triplot(TRI,XX2,FXX2,'linewidth',3,'color','green')
    end
    hold on
    x=(0.20).*cos(ap)+4.*r+aaa(nn)+L.*sin(aa(nn));
    y=(0.20).*sin(ap)+3.*r+L.*cos(aa(nn));
    plot(x,y,'linewidth',10,'color','blue')
    hold on
    x=(0.15).*cos(ap)+4.*r+aaa(nn)+L.*sin(aa(nn));
    y=(0.15).*sin(ap)+3.*r+L.*cos(aa(nn));
    plot(x,y,'linewidth',10,'color','blue')
    hold on
    x=(0.1).*cos(ap)+4.*r+aaa(nn)+L.*sin(aa(nn));
    y=(0.1).*sin(ap)+3.*r+L.*cos(aa(nn));
    plot(x,y,'linewidth',10,'color','blue')
    hold on
    XX4=[4.*r+aaa(nn) 4.*r+aaa(nn)+L.*sin(aa(nn))];
    FXX4=[3.*r 3.*r+L.*cos(aa(nn))];
    XX5=[4.*r+aaa(nn) 4.*r+aaa(nn)];
    FXX5=[3.*r 3.*r+L];
    line(XX5,FXX5,'linewidth',0.5,'color','black')
    line(XX4,FXX4,'linewidth',6,'color','blue')
    axis equal
    format long
    pause(0.000001);
end
figure
plot(T,aa,'linewidth',4,'color','red')
xlabel('T','fontsize',25)
ylabel('teta','fontsize',25)
hold on
SA=[0 T(end)];
AS=[0 0];
line(SA,AS,'linewidth',2,'color','black')
grid on
figure
plot(T,aaa,'linewidth',4,'color','red')
hold on
SA=[0 T(end)];
AS=[0 0];
line(SA,AS,'linewidth',2,'color','black')
xlabel('T','fontsize',25)
ylabel('X','fontsize',25)
grid on