function dd = diffdiv(x, y)
    m = size(x,2);
    dd = zeros(m, m);
    dd(:, 1) = y';
    for j = 2:m
        for i = 1 : (m - j + 1)
            dd(i,j) = (dd(i + 1, j - 1) - dd(i, j - 1)) / (x(i + j - 1) - x(i));
        end
    end
    dd = dd(1,:); % dd = [[y0], [y0 y1], ..., [y0, ..., yn]]
end