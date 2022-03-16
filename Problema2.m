format long;
f = @(x)exp(x);
x = sym('x');
integrale = integral(f,0,1); %integrale = int(f,x,0,1)

%punto b

fprintf('\n');
disp('punto b:');
fprintf('\n');

e = 10.^(-(1:10));
n = ceil(sqrt(exp(1)./(12*e)));

vettoreIn = zeros(1,10);
for i = 1:10
    vettoreIn(i) = integrazioneNumerica(0,1,n(i),f);
end
differenzaB = abs(integrale - vettoreIn);
Tb = table(e',n',vettoreIn',differenzaB','VariableNames',{'Soglia e' 'n(e)' 'In' '|I-In|'});
Tb.Properties.VariableNames;
disp(Tb);
    
%punto c

fprintf('\n');
disp('punto c:');
fprintf('\n');

i = [2,4,8,16];
for k = 1:4
    r(k) = integrazioneNumerica(0,1,i(k),f);
end
differenzaC = abs(integrale - r);
Tc = table(r',differenzaC','VariableNames',{'Nuove approssimazioni' 'differenza'});
Tc.Properties.VariableNames;
disp(Tc);

%punto d

fprintf('\n');
disp('punto d:');
fprintf('\n');

h = [(1/2)^2,(1/4)^2,(1/8)^2,(1/16)^2];
p = interpolazione(h,r,0)
fprintf('\n');
disp(['differenza = ', num2str(abs(p-integrale))]);







