function[xk,k,norma2] = jacobi(A,b,innesco,e,nmax)

%jacobi(A,b,innesco,e,nmax) restituisce il primo vettore xk che, calcolato dal
%metodo di Jacobi, soddisfa la condizione di arresto del residuo
%norma(r) <= e*norma2(b)
%Condizioni input: A matrice, b vettore colonna, 
%innesco: vettore colonna da cui partire
%e valore soglia di precisione, nmax numero massimo d'iterazioni consentite

v=diag(A);
D=diag(v);

%calcolo le iterazioni

xk = innesco;
norma2 = norm(b - A*xk ,2);
    for k = 1:nmax
        if norma2 <= e*norm(b,2)
            break
        end
        xk = xk + D\(b - A*xk);
        norma2 = norm(b - A*xk ,2);        
    end       
end
    
