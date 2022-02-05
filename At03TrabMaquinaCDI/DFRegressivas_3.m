% DFRegressivas_3- fórmula das diferenças regressivas em 3 pontos
% Formúla das Diferenças regressivas em 3 pontos
% f'(xi)=(f(x(i-2))-4*f(x(i-1)+3*f(x(i)))/(2*h)
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


function [x,y,dydx]=DFRegressivas_3(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
        if nargin==4 %o nargin conta os inputs de uma função 
            y=f(x);
        end
    dydx=zeros(1,n);
    dydx(1)=( (-3)*y(1) + 4*y(2) - y(3) )/(2*h);
    dydx(2)=( (-3)*y(2) + 4*y(3) - y(4) )/(2*h);
        for i=3:n
            dydx(i)=( y(i-2) - 4*y(i-1) + 3*y(i) )/(2*h);
        end
end