%M = [1 2 ; 2 1];
H = hilb(4)
%cycjacobi(M,10^-1,10);
[d,s,p] = cycjacobi(H,10^-15, 10)