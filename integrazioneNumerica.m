function r = integrazioneNumerica(a,b,n,f)

%integrazioneNumerica(a,b,n,f) restituisce il valore approssimato
%dell'integrale di una funzione f calcolato nell'intervallo [a,b] 
%suddiviso in n sottointervalli.
%Condizioni: 
% a < b, n >= 1, f funzione

h = (b-a)/n;
x = linspace(a,b,n+1); %x = a + (0:n)*h;
r = h * ( (f(a) + f(b)) / 2 + sum(f(x(2:n))) );
 
end