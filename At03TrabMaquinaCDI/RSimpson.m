%   RSimpson  Regra de Simpson
%   a(n) = a(1)+(n-1)*r  
%
%INPUT:
%   f - funçao integrante
%   a - valor inferior do intervalo de integracao
%   n - numero de iteraçoes 
%   b- valor superior do intervalo de integracao
%OUTPUT: 
%   s - valor aproximado da integracao obtido com o metodo de Simpson
%   s = h/3 *(f(x0) + 4*f(x1) + 2*f(x2) + 4*f(x3) + 2*f(x4) + ... + f(x))
%   
%   Trabalho realizado por:
%       14/06/2021  Diogo Silva - 2020138438
%       14/06/2021  Hugo Ferreira - 2020128305
%       14/06/2021  Rúben Mendes - 2020138473


  function s = RSimpson(~,f,a,b,n)
     h = (b-a)/n;
     x=a;
     s = 0;
              
     for i=1:n-1
        x=x+h;
          if mod(i,2)==0 %mod
             s = s+2*f(x);
          else
             s = s+4*f(x);
          end
     end
      s = h*(f(a)+f(b)+s)/3;
 end