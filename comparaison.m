function comparaison(f,a,b,n)
    xi_1 = zeros(1,n);
    xi_2 = zeros(1,n);
    
    % Calculs des points
    for i = 1:n
        xi_1(i) = a + (i - 1) * ((b - a) / (n - 1));
        xi_2(i) = ((a + b) / 2) * a + ((b - a) / 2) * cos((2 * i - 1) * (pi / (2 * n)));
    end
    
    % Affiche f(x)
    figure
    plot(linspace(a,b,n*10), f(linspace(a,b,n*10)), 'g')
    
    % Calcule P1(x)
    dd1 = diffdiv(xi_1, f(xi_1));
    p1 = myhorner(dd1, xi_1, xi_1);
    
    % Affiche P1(x)
    hold on
    plot(xi_1, p1, 'marker','*','markersize',8)
    
    % Calcule P2(x)
    dd2 = diffdiv(xi_2, f(xi_2));
    p2 = myhorner(dd2, xi_2, xi_2);
    
    % Affiche P2(x)
    hold on
    plot(xi_2, p2, 'marker','+', 'markersize',5)
    
    % Affiche les labels
    hold on
    legend({'y = f(x)','y = P1(x)','y = P2(x)'},'Location','southwest')
    
end