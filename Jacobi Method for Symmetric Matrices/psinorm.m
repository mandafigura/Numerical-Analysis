function [psi] = psinorm(A)
    [n,m] = size(A);
    psi = 0;
    %soma o quadrado dos termos que não pertecem à diagonal de A
    for i = 1 : n-1
        j = [i+1 : n];
        psi = psi + sum(A(i,j).^2 + A(j,i).^2');
    end
    psi = sqrt(psi); %calcula a raiz quadrada da soma
end