% NRK4 - Metodo de Runge-Kutta de 2 ordem
% y = RK4(f, a, b, n, y0)
% y'= f(t,y) com t=[a, b] e y(a)=y0 condi��o inicial
% 
% INPUT:
%   f - fun��o do 2� membro da Equa��o Diferencial
%   [a, b] - extremos do intervalo da vari�vel independente t
%   n - n�mero de subintervalos ou itera��es do m�todo
%   y0 - condi��o inicial t=a -> y=y0
% 
% OUTPUT: 
%   y - vector das aproxima��es discretas da solu��o exacta
%
%   26/03/2021  Arm�nio Correia  armenioc@isec.pt
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   R�ben Mendes  - 2020138473 - a2020138473@isec.pt

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