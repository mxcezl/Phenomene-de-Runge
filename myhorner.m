function px = myhorner(dd, xi, x)
    n = length(dd);
	px = dd(n) * ones(size(x));
	for i= n-1:-1:1
		px = px.*(x - xi(i) * ones(size(x))) + dd(i) * ones(size(x));
	end
end