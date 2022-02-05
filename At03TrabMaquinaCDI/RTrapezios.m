%RTrapezios Regra dos Trapezios
%   T=RTrapezios(f,a,b,n)
%   a(n) = a(1)+(n-1)*r  
%
%INPUT:
%   f - funçao integrante
%   a - valor inferior do intervalo de integracao
%   n - numero de iteraçoes 
%   b - valor superior do intervalo de integracao
%OUTPUT: 
%   T - valor aproximado da integracao obtido com o metodo dos trapezios
%   T = h/2 *(f(x0) + 2*f(x1) + 2*f(x2) + ... + f(x))
%   
%   Trabalho realizado por:
%       14/06/2021  Diogo Silva - 2020138438
%       14/06/2021  Hugo Ferreira - 2020128305
%       14/06/2021  Rúben Mendes - 2020138473

function t = RTrapezios(~,f,a,b,n)
     h=(b-a)/n;
     x=a;
     s=0;
      for i=1:n-1
       x=x+h;
       s=s+f(x);
      end
     t = h*(f(a)+2*s+f(b))/2;
end
            