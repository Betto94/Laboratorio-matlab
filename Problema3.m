%punto a:

A = [5,1,2;-1,7,1;0,1,-3];
b = [13;16;-7];
x = A\b;

%punto b:

D=diag(diag(A));
xk = [0;0;0];
S = zeros(3,12);
S(:,1) = xk;

for k = 2:11
        
    xk = xk + D\(b - A*xk);
    S(:,k) = xk;  
    
end

S(:,12) = x;
disp('Matrice S del punto B:');
disp(S);


%punto c:

e = 10.^(-(1:10));
x0 = [0;0;0];
Matrice2 = zeros(3,10);
MatriceX = zeros(10,3);

for i = 1:10
    [Matrice2(:,i),k(i),norma2] = jacobi(A,b,x0,e(i),100);
    normaInf(i) = norm(x-Matrice2(:,i),Inf);
    MatriceX(i,:) = x;
end

T = table(k',Matrice2',MatriceX,normaInf','VariableNames',{'K' 'x_e' 'x' 'Norma Infinito |x-x(e)|'});
T.Properties.VariableNames;
disp(T);




