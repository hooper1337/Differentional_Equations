%   ArménioCorreia .: armenioc@isec.pt

%   Trabalho realizado por:
%   08/05/2021  Diogo Silva - 2020138438
%   08/05/2021  Hugo Ferreira - 2020128305
%   08/05/2021  Rúben Mendes - 2020138473

function [t,u,v]=NEulerMSED(f,g,a,b,n,u0,v0)
h=(b-a)/n;
t=a:h:b;
u=zeros(1,n+1);
v=zeros(1,n+1);
u(1)=u0;
v(1)=v0;

for i=1:n
    u(i+1)=u(i)+h*f(t(i),u(i),v(i));
    v(i+1)=v(i)+h*g(t(i),u(i),v(i));
    u(i+1)=u(i)+h/2*(f(t(i),u(i),v(i))+f(t(i+1),u(i+1),v(i+1)));
    v(i+1)=v(i)+h/2*(g(t(i),u(i),v(i))+g(t(i+1),u(i+1),v(i+1)));  
end