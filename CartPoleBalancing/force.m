% Extera Project of D.r Moeen Fard
% code by Farzad Azizizade
% 9512424248
function q=force(A1,A2)
O1=(20.*pi)./180;
tanj=1./O1;
O2=5;
tanj2=1./O2;
sum=0;
summ=0;
F=100;
f=50;
y=[];
y(1,1)=-F;
y(1,2)=-f;
y(1,3)=0;
y(2,1)=-f;
y(2,2)=0;
y(2,3)=f;
y(3,1)=0;
y(3,2)=f;
y(3,3)=F;
for i=1:3;
    for j=1:3;
        if i==1 && j==1
               if A1>=(-O1) && A1<=0;
       a=-tanj.*A1;
   elseif A1<(-O1);
       a=1;
   else
       a=0;
               end
   if A2>=(-O2) && A2<=0;
       aa=-tanj2.*A2;
   elseif A2<(-O2);
       aa=1;
   else
       aa=0;
   end
        end
        
        if i==1 && j==2
               if A1>=(-O1) && A1<=0;
       a=-tanj.*A1;
   elseif A1<(-O1);
       a=1;
   else
       a=0;
               end
   if A2>=(-O2) && A2<=0;
        aa=tanj2.*A2+1;
    elseif A2<=(O2) && A2>=0;
        aa=-tanj2.*A2+1;
    else
       aa=0;
    end
        end
        
        if i==1 && j==3
               if A1>=(-O1) && A1<=0;
       a=-tanj.*A1;
   elseif A1<(-O1);
       a=1;
   else
       a=0;
               end
   if A2<=(O2) && A2>=0;
       aa=tanj2.*A2;
    elseif A2>(O2);
       aa=1;
    else
       aa=0;
    end
        end
        
        if i==2 && j==1
             if A1>=(-O1) && A1<=0;
        a=tanj.*A1+1;
    elseif A1<=(O1) && A1>=0;
        a=-tanj.*A1+1;
    else
       a=0;
             end
    if A2>=(-O2) && A2<=0;
       aa=-tanj2.*A2;
   elseif A2<(-O2);
       aa=1;
   else
       aa=0;
   end
        end
        
        if i==2 && j==2
             if A1>=(-O1) && A1<=0;
        a=tanj.*A1+1;
    elseif A1<=(O1) && A1>=0;
        a=-tanj.*A1+1;
    else
       a=0;
             end
    if A2>=(-O2) && A2<=0;
        aa=tanj2.*A2+1;
    elseif A2<=(O2) && A2>=0;
        aa=-tanj2.*A2+1;
    else
       aa=0;
    end
        end
        
        if i==2 && j==3
             if A1>=(-O1) && A1<=0;
        a=tanj.*A1+1;
    elseif A1<=(O1) && A1>=0;
        a=-tanj.*A1+1;
    else
       a=0;
             end
    if A2<=(O2) && A2>=0;
       aa=tanj2.*A2;
    elseif A2>(O2);
       aa=1;
    else
       aa=0;
    end
        end
        
        if i==3 && j==1
             if A1<=(O1) && A1>=0;
       a=tanj.*A1;
    elseif A1>(O1);
       a=1;
    else
       a=0;
             end
    if A2>=(-O2) && A2<=0;
       aa=-tanj2.*A2;
   elseif A2<(-O2);
       aa=1;
   else
       aa=0;
   end
        end
        
        if i==3 && j==2
             if A1<=(O1) && A1>=0;
       a=tanj.*A1;
    elseif A1>(O1);
       a=1;
    else
       a=0;
             end
    if A2>=(-O2) && A2<=0;
        aa=tanj2.*A2+1;
    elseif A2<=(O2) && A2>=0;
        aa=-tanj2.*A2+1;
    else
       aa=0;
    end
        end
        
        if i==3 && j==3
             if A1<=(O1) && A1>=0;
       a=tanj.*A1;
    elseif A1>(O1);
       a=1;
    else
       a=0;
    end
            if A2<=(O2) && A2>=0;
       aa=tanj2.*A2;
    elseif A2>(O2);
       aa=1;
    else
       aa=0;
    end
        end
        sum=sum+y(i,j)*(a*aa);
        summ=summ+aa*a;
    end
end
q=sum./summ;
end