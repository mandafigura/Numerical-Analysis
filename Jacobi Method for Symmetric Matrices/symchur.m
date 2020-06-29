function [c,s] = symchur(A,p,q)
    if A(p,q)==0
        c = 1;
        s = 0;
    else
        neta = ( A(q,q) - A(p,p) ) / ( 2*A(p,q) );
        if neta >= 0
            t = 1/(neta + sqrt(1 + neta^2));
        else
            t = -1/(-neta + sqrt(1 + neta^2));
        end
        c = 1/sqrt(1 + t^2);
        s = c*t;
    end
end