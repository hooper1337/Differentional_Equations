%N_ODE23  ODE23 do Matlab.
% FÓRMULAS NECESSÁRIAS PARA A IMPLEMENTAÇÃO DO MÉTODO: 
%   [t,y] = N_ODE23(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 Condição inicial  
%
%INPUT:
%   f - função
%   a - valor inferior do intervalo
%   b - valor superior do intervalo
%   n - número de interações
%   y0 - valor inicial
 
%OUTPUT:
%   t - discretização do domínio
%   y - vector das aproximações discretas da solução exata
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   Rúben Mendes  - 2020138473 - a2020138473@isec.pt

function [t,y]=NODE23(f,a,b,n,y0)
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
sol=ode23(f,t,y0);
[t,y]=deval(sol,t);
end

