% DFProgressivas_2 - Fórmula de diferenças progressivas em 2 pontos
% Formúla das Diferenças progressivas em 2 pontos
% f'(xi)=(f(x(i+1))-f(x(i))/h
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

function [x,y,dydx]=DFProgressivas_2(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
        if nargin==5 %o nargin conta os inputs de uma função 
            y=f(x);
        end
    dydx=zeros(1,n);
        for i=1:n-1
            dydx(i)=(y(i+1)-y(i))/h;
        end
    dydx(n)=(y(n)-y(n-1))/h;
end