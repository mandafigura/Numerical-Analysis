function [M] = garow(M,c,s,i,k,j1,j2)
    for j = j1 : j2
        t1 = M(i,j);
        t2 = M(k,j);
        M(i,j) = c*t1 - s*t2;
        M(k,j) = s*t1 + c*t2;
    end
end