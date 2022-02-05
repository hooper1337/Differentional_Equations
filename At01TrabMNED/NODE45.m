%N_ODE45  ODE45 do Matlab.
%   [t,y] = N_ODE45(f,a,b,n,y0) M�todo num�rico para a resolu��o de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condi��o inicial  
%
%INPUT:
%   in1 - fun��o
%   in2 - valor inferior do intervalo
%   in3 - valor superior do intervalo
%   in4 - n�mero de intera��es
%   in5 - valor inicial
 
%OUTPUT:
%   t - discretiza��o do dom�nio
%   y - vector das aproxima��es discretas da solu��o exacta
%
%   26/03/2021  Arm�nio Correia  armenioc@isec.pt
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   R�ben Mendes  - 2020138473 - a2020138473@isec.pt


 
function [t,y]=NODE45(f,a,b,n,y0)
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
sol=ode45(f,t,y0);
[t,y]=deval(sol,t);
end

