function p = Esercizio1_11(x,y,t)

%Esercizio1_11(x,y,t) restituisce un vettore p contenente i valori del
%polinomio di interpolazione calcolato nei punti contenuti nel vettore t.
%Condizioni: x è un vettore di valori distinti sull'asse delle ascisse, y è un vettore di valori 
%sull'asse delle ordinate, t è un vettore di valori di cui si vuole valutare il polinomio; x
%e y devono avere la stessa lunghezza.

for i = 1:length(t)
    p(i) = interpolazione(x,y,t(i));
end
end
    