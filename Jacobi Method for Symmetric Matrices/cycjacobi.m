function [D,sweep,psi] = cycjacobi(A,tol,nmax)
    [n,m] = size(A);
    D = A;
    psi = norm(A,'fro');
    epsi = tol*psi;
    psi = psinorm(D);
    sweep = 0;
    iter = 0;
    while psi > epsi & iter <= nmax
        iter = iter + 1;
        sweep = sweep + 1;
        for p = 1 : n-1
            for q = p + 1 : n
                [c,s] = symchur(D,p,q);
                [D] = gacol(D,c,s,1,n,p,q);
                [D] = garow(D,c,s,p,q,1,n);
            end
        end
        psi = psinorm(D);
    end
end