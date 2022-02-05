function y = MEuler(f,a,b,n,y0)
%MEULER Método de Euler para resolução numérica de EDO/PVI
%   FÓRMULAS NECESSÁRIAS PARA A IMPLEMENTAÇÃO:
%   y'=f(t,y), t=[a,b], y(a)=y0
%   y(i+1)=y(i)+hf(t(i),y(i)), i=0,1,2,...,n
%INPUT:
%   f - função da EDO y'=f(t,y)
%   [a,b] - intervalo de valores da variável independente t
%   n - núnmero de subintervalos ou iterações do método
%   y0 - aproximação inicial y(a)=y0
%OUTPUT:
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/03/2021  Arménio Correia  armenioc@isec.pt
%
%   Trabalho realizado por:(23/04/2021)
%
%   Diogo Silva - 2020138438 - a2020138438@isec.pt
%   Hugo Ferreira - 2020128305 - 2020128305@isec.pt
%   Rúben Mendes  - 2020138473 - a2020138473@isec.pt


h = (b-a)/n;
t(1) = a;
y(1) = y0;
for i =1:n
    y(i+1) = y(i)+h*f(t(i),y(i));
    t(i+1) = t(i)+h;
end
end

