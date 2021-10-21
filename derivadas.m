function [derivadaAtras, derivadaAdelante, derivadaCentrada] = derivadas(x,y)
    
    % La funcion tan solo requiere de dos vectores x, y, x los datos de la
    % abcisa , y de las ordenadas evaluadas en la ecucion que desea obtener
    % su derivada.
    
    % la funcion regresa 3 vectores con los datos de la derivada evaluada
    % en todos los puntos: atras, adelante, centrada.
    
    % adicional la funcion me genera el plot de los datos de entrada con
    % respecto a los resultados de las 3 derivadas: atras en rojo, adelante
    % en negro y centrada en rojo con forma de circulo. 
    
    %ejemplo:
    % paso = 3;
    % x = 1:paso:10;
    % y = x.^2;
    % [atras,adelante] = derivadas(x,y);
    
    h = x(2) - x(1);
    
    % Calculo de la derivada hacia atras
    for i = 2:length(x)
        derivadaAtras(i-1) = ( y(i) - y(i-1) ) ./ h;
        xxAtras(i-1) = x(i);
    end
    
    % Calculo de la derivada hacia adelante
    for j = 1:length(x)-1
        derivadaAdelante(j) = ( y(j+1) - y(j) ) ./ h;
        xxAdelante(j) = x(j);
    end

    % Calculo de la derivada Centrada
    for k = 2:length(x)-1
        derivadaCentrada(k-1) = ( y(k+1) - y(k-1) ) ./ (2*h);
        xxCentrada(k-1) = x(k);
    end

    
    % plot
    figure(1)
    plot(x,y,'--b')
    hold on
    plot(xxAtras,derivadaAtras,'-k')
    hold on
    plot(xxAdelante,derivadaAdelante,'-r')
    hold on
    plot(xxCentrada,derivadaCentrada,'or')
end