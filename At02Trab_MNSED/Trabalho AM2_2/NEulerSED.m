function [t,u,v] = NEulerSED(f,g,a,b,n,u0,v0)
%NEULERSED Método de Euler para um Sistema de SED/PVI
%   
%   15/04/2021  Arménio Correia   armenioc@isec.pt
%
%   Trabalho realizado por:
%   08/05/2021  Diogo Silva - 2020138438
%   08/05/2021  Hugo Ferreira - 2020128305
%   08/05/2021  Rúben Mendes - 2020138473

h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i = 1:n
    u(i+1) = u(i)+h*f(t(i),u(i),v(i));
    v(i+1) = v(i)+h*g(t(i),u(i),v(i));    
end
end

