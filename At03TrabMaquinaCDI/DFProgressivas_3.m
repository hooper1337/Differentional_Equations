% DFProgressivas_3- fórmula das diferenças progressivas em 3 pontos
% Formúla das Diferenças progressivas em 3 pontos
% f'(xi)=(-3*f(x(i)) + 4*f(x(i+1)) - f(x(i+2))/(2*h)
% INPUT:  f - função
%         [a, b] - intervalo de derivação
%         h - passo da discretização
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%   Trabalho realizado por:
%       14/06/2021  Diogo Silva - 2020138438
%       14/06/2021  Hugo Ferreira - 2020128305
%       14/06/2021  Rúben Mendes - 2020138473

function [x,y,dydx]=DFProgressivas_3(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
        if nargin==4 %o nargin conta os inputs de uma função 
            y=f(x);
        end
    dydx=zeros(1,n);
        for i=1:n-2
            dydx(i)=( (-3)*y(i) + 4*y(i+1) - y(i+2) ) / (2*h);
        end
    dydx(n-1)=( y(n-3) - 4*y(n-2) + 3*y(n-1) )/(2*h);
    dydx(n)=( y(n-2) - 4*y(n-1) + 3*y(n) )/(2*h);
end