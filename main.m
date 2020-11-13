x = [0, 0.5, 1];
f = @(x)(sqrt(1+x));
f1 = @(x)(sin(2*pi.*x)/2*pi.*x);
f2 = @(x)(1./(1+x.*x));
comparaison(f1,-2,2,20)
comparaison(f2,-5,5,20)

