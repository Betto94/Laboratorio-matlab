function p = interpolazione(x,y,t)

%interpolazione(x, y, t) restituisce il valore del polinomio di interpolazione
%dei punti (x(i),y(i)) nel punto t inserito in input
%Condizioni: x vettore di valori distinti sull'asse delle ascisse, y vettore di valori 
%sull'asse delle ordinate, t punto in cui si vuole valutare il polinomio; x
%e y devono avere la stessa lunghezza.

A = differenzeDivise(x,y);  %calcolo matrice differenze divise
d = diag(A);
h=zeros(1,length(d));
h(end) = d(end);
for i = length(d)-1:-1:1
    h(i) = d(i) + (t-x(i))*h(i+1);
    p = h(i);
end       
end
    
    
   