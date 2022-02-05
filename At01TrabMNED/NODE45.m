%N_ODE45  ODE45 do Matlab.
%   [t,y] = N_ODE45(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%INPUT:
%   in1 - função
%   in2 - valor inferior do intervalo
%   in3 - valor superior do intervalo
%   in4 - número de interações
%   in5 - valor inicial
 
%OUTPUT:
%   t - discretização do domínio
%   y - vector das aproximações discretas da solução exacta
%
%   26/03/2021  Arménio Correia  armenioc@isec.pt
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   Rúben Mendes  - 2020138473 - a2020138473@isec.pt


 
function [t,y]=NODE45(f,a,b,n,y0)
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
sol=ode45(f,t,y0);
[t,y]=deval(sol,t);
end

