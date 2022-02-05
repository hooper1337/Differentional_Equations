%N_ODE23  ODE23 do Matlab.
% F�RMULAS NECESS�RIAS PARA A IMPLEMENTA��O DO M�TODO: 
%   [t,y] = N_ODE23(f,a,b,n,y0) M�todo num�rico para a resolu��o de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 Condi��o inicial  
%
%INPUT:
%   f - fun��o
%   a - valor inferior do intervalo
%   b - valor superior do intervalo
%   n - n�mero de intera��es
%   y0 - valor inicial
 
%OUTPUT:
%   t - discretiza��o do dom�nio
%   y - vector das aproxima��es discretas da solu��o exata
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   R�ben Mendes  - 2020138473 - a2020138473@isec.pt

function [t,y]=NODE23(f,a,b,n,y0)
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
sol=ode23(f,t,y0);
[t,y]=deval(sol,t);
end

