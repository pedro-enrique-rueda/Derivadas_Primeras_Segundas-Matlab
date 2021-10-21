function [derivada] = derivadaPr(x,y)
    
    % La funcion tan solo requiere de dos vectores x, y, x los datos de la
    % abcisa , y de las ordenadas evaluadas en la ecucion que desea obtener
    % su derivada.
    
    % la funcion regresa 1 vector con los datos de la derivada evaluada
    % en todos los puntos.
    
    % adicional la funcion me genera el plot de los datos de entrada con
    % respecto a la derivada. 
    
    %ejemplo:
    % paso = 3;
    % x = 1:paso:10;
    % y = x.^2;
    % sol = derivadaPr(x,y)
    
    h = x(2) - x(1);
    
    % Calculo de la derivada aumentada en precisión
    for i = 1:length(x)-2
        derivada(i) = ( - y(i+2) + 4*y(i+1) - 3*y(i) ) ./ (2*h);
        xxAtras(i) = x(i);
    end
    
    % plot
    figure(1)
    plot(x,y,'--b')
    hold on
    plot(xxAtras,derivada,'-k')

end