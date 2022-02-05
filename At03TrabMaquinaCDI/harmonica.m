% Avaliar se a função é harmónica 
%
%   Trabalho realizado por:
%       14/06/2021  Diogo Silva - 2020138438
%       14/06/2021  Hugo Ferreira - 2020128305
%       14/06/2021  Rúben Mendes - 2020138473

function verifica = harmonica(f)

syms x y;

if(diff(f,x,2)+diff(f,y,2)==0)
    verifica = 1;
else
    verifica = 0;
end