% Extera Project of D.r Moeen Fard
% code by Farzad Azizizade
% 9512424248
function dA=teta_and_x(t,A)
dA=zeros(4,1);
M=3;
m=1;
l=1;
g=9.81;
z=cos(A(1));
zz=sin( A(1));
zzz=force(A(1),A(2));
dA(1)=A(2);
dA(2)=(1./(l*(m+M-m*(z.^2)))).*((-z)*zzz-(z)*m*l*zz*(A(2).^2)+g*zz*M+g*zz*m);
dA(3)=A(4);
dA(4)=(1./(m+M-m*(z.^2))).*(zzz+m*l*zz*(A(2).^2)-g*zz*m*z);
end
