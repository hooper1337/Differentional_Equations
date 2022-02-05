% NRK4 - Metodo de Runge-Kutta de 2 ordem
% y = RK4(f, a, b, n, y0)
% y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial
% 
% INPUT:
%   f - função do 2º membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial t=a -> y=y0
% 
% OUTPUT: 
%   y - vector das aproximações discretas da solução exacta
%
%   26/03/2021  Arménio Correia  armenioc@isec.pt
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   Rúben Mendes  - 2020138473 - a2020138473@isec.pt

function y = NRK4(f,a,b,n,y0)

h = (b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
y(1)=y0;


for i=1:n
    k1 = f(t(i), y(i));
    k2 = f(t(i)+(h/2), y(i)+(h*k1)/2);
    k3 = f(t(i)+(h/2), y(i)+h*(k2/2));
    k4 = f(t(i)+h, y(i)+(h*k3));
    
    y(i+1)=y(i)+(h/6)*(k1+2*k2+2*k3+k4);
    t(i+1)=t(i)+h;
    
end