% DFRegressivas_2- fórmula das diferenças regressivas em 2 pontos
% Formúla das Diferenças regressivas em 2 pontos
% f'(xi)=(f(x(i))-f(x(i-1))/h
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

function [x,y,dydx]=DFRegressivas_2(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
        if nargin==4 %o nargin conta os inputs de uma função 
            y=f(x);
        end
    dydx=zeros(1,n);
    dydx(1)=(y(2)-y(1))/h;
        for i=2:n
            dydx(i)=(y(i)-y(i-1))/h;
        end
end