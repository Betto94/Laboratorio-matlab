function A = differenzeDivise(x,y)

%differenzeDivise(x,y) restituisce una matrice triangolare inferiore
%contenente i valori delle differenze divise. 
%Condizioni: x lista di valori distinti sull'asse delle x, y lista di      
%valori sull'asse delle y; x e y devono avere la stessa dimensione
   
n = length(x);
A = zeros(n);
A(:,1) = y;
for i = 2:n
    for j = 2:i
        A(i,j) = (A(i,j-1)-A(j-1,j-1))/(x(i)-x(j-1));
    end
end
end