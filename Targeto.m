function object=Targeto(Matriz_principal,x,Incremento_ataque2)

select=menu('Objetivo: ', 'Jugador 1', 'Jugador 2', 'Enemigo 1', 'Enemigo 2');

switch select

    case 1
    Double_defense=str2double(Matriz_principal(3,1));    
    if(Incremento_ataque2>=Double_defense)
        Double_life=str2double(Matriz_principal(2,1));
        Double_life=Double_life-Incremento_ataque2;

        Matriz_principal(2,1)=num2str(Double_life);
        fprintf('\n El ataque ha surtido efecto...auch! \n\n')
    else
        fprintf('\n El ataque ha fallado unu \n\n')
    end
    object=Matriz_principal;
    x=x;

    case 2 
    Double_defense=str2double(Matriz_principal(3,2));    
    if(Incremento_ataque2>=Double_defense)
        Double_life=str2double(Matriz_principal(2,2));
        Double_life=Double_life-Incremento_ataque2;
    
        Matriz_principal(2,2)=num2str(Double_life);
        fprintf('\n El ataque ha surtido efecto...sóbate. \n\n')
    else
        fprintf('\n El ataque ha fallado unu \n\n')
    end
    object=Matriz_principal;
    x=x;

    case 3
    Double_defense=str2double(Matriz_principal(3,3));    
    if(Incremento_ataque2>=Double_defense)
        Double_life=str2double(Matriz_principal(2,3));
        Double_life=Double_life-Incremento_ataque2;

        Matriz_principal(2,3)=num2str(Double_life);
        fprintf('\n El ataque ha surtido efecto...eso si que duele. \n\n')
    else
        fprintf('\n El ataque ha fallado. \n\n')
    end
    object=Matriz_principal;
    x=x;

    case 4
    Double_defense=str2double(Matriz_principal(3,4));    
    if(Incremento_ataque2>=Double_defense)
        Double_life=str2double(Matriz_principal(2,4));
        Double_life=Double_life-Incremento_ataque2;
        
        Matriz_principal(2,4)=num2str(Double_life);
        fprintf('\n El ataque ha surtido efecto...*sonido de golpe brutal* \n\n')
    else
        fprintf('\n El ataque ha fallado. \n\n')
    end
    object=Matriz_principal;
    x=x;

end