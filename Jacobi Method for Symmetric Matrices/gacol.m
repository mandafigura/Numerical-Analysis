function [M] = gacol(M,c,s,j1,j2,i,k)
    for j = j1 : j2
        t1 = M(j,i);
        t2 = M(j,k);
        M(j,i) = c*t1 - s*t2;
        M(j,k) = s*t1 + c*t2;
    end
end