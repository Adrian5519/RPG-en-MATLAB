function power_up=Statsi(Matriz_principal,x,A1,A2)

stats = menu('Seleccione estadística', 'Ataque', 'Defensa', 'Magia', 'Curación');

switch stats

    case 1
    Tiro_power_up=Dicezz(20);
    chance=18;
    if(Tiro_power_up<chance)
        Incremento_fisico=str2double(Matriz_principal(5,x))+Dicezzatq(5,10);
        Incremento_magico=str2double(Matriz_principal(6,x))+(Dicezzatq(5,10)*1.5);
        Matriz_principal(5,x)=num2str(Incremento_fisico);
        Matriz_principal(6,x)=num2str(Incremento_magico);
    else
    fprintf('\n\nEl efecto ha fallado \n')
    end

    power_up=Matriz_principal;

    case 2
    Tiro_power_up=Dicezz(20);
    Chance=18;
    if(Tiro_power_up<Chance)
        Defensa=str2double(Matriz_principal(3,x));
        Defensa=Defensa+Dicezzatq(3,7);
        Matriz_principal(3,x)=num2str(Defensa);
    else
    fprintf('\n\nEl efecto ha fallado \n')
    end

    power_up=Matriz_principal;
  
    case 3
    Tiro_power_up=Dicezz(20);
    Chance=18;
    if(Tiro_power_up<Chance)
        Magia=str2double(Matriz_principal(4,x));
        Magia=Magia+Dicezzatq(15,30);
        Matriz_principal(4,x)=num2str(Magia);
    else
    fprintf('\n\nEl efecto ha fallado \n')
    end

    power_up=Matriz_principal;

    case 4
    Tiro_power_up=Dicezz(20);
    Chance=18;
    if(Tiro_power_up<Chance)
        Heal=str2double(Matriz_principal(2,x));
        Heal=Heal+Dicezzatq(10,30);
        Matriz_principal(2,x)=num2str(Heal);
    else
    fprintf('\n\nEl efecto ha fallado \n')

    end

    power_up=Matriz_principal;

end