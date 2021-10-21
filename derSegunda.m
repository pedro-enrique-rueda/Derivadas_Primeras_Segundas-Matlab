function derSegunda = derSegunda(x,y)

    % Esta funcion me genera la derivada segunda de un conjunto de datos
    % solo requiere los vectores x, y, donde y son los datos de la funcion 
    % ya evaluada con respecto a x, de la funcion que desea sacar la 
    % segunda derivada. 
    
    % la funcion me regresa el vector solucion de la derivada segunda eva
    % en todo x. y ademas, me genera un plot de los datos de entrada + 
    % la grafica de la segunda derivada. 
    
    %ejemplo:
    % paso = 3;
    % x = 1:paso:10;
    % y = x.^2;
    % [derivadaSegunda] = derSegunda(x,y);

    h = x(2) - x(1);
    
    for i = 2:length(y)-1 
        derSegunda(i-1) = ( y(i+1) - 2*y(i) + y(i-1) ) / (h^2);
        xx(i-1) = x(i);
    end
    
    % plot
    figure(1)
    plot(x,y,'--b')
    hold on
    plot(xx,derSegunda,'-k')

end