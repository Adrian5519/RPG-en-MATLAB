clc

cantidad_de_jugadores = 2;
cantidad_de_enemigos = 2;

Chr_jugador1 = input('Nombre del jugador 1: ','s');
Chr_jugador2 = input('Nombre del jugador 2: ','s');
Chr_enemigo1 = input('Nombre del enemigo 1: ','s');
Chr_enemigo2 = input('Nombre del enemigo 2: ','s');

Jugador1 = convertCharsToStrings(Chr_jugador1);
Jugador2 = convertCharsToStrings(Chr_jugador2);
Enemigo1 = convertCharsToStrings(Chr_enemigo1);
Enemigo2 = convertCharsToStrings(Chr_enemigo2);

Jugadores=[Jugador1 Jugador2];
Enemigos=[Enemigo1 Enemigo2];
Participantes = [Jugadores Enemigos];

Matriz_principal = [Jugadores Enemigos];



fprintf('\n                      ORDEN DE TURNOS\n\n')

Cantidad_de_participantes = 4;
Matriz_principal_auxiliar = Matriz_principal;
Matriz_principal_auxiliar = str2double(Matriz_principal_auxiliar);
Matriz_principal_2 = ["0" "0" "0" "0"];
Tiro_del_dado = [0 0 0 0];

for x=1:1:Cantidad_de_participantes
    Matriz_principal_2(x)=Matriz_principal(x);
    Tiro_del_dado(x)=Dicezz(20);
end

Auxiliar_1 = [0 0 0];
Auxiliar_2 = ["0" "0" "0"];

for i=1:1:3 
    for x=1:1:Cantidad_de_participantes-1
    x2=x+1;
        if(Tiro_del_dado(x)<Tiro_del_dado(x2))
        Auxiliar_1(x)=Tiro_del_dado(x);
        Tiro_del_dado(x)=Tiro_del_dado(x2);
        Tiro_del_dado(x2)=Auxiliar_1(x);

        Auxiliar_2(x)=Matriz_principal_2(x);
        Matriz_principal_2(x)=Matriz_principal_2(x2);
        Matriz_principal_2(x2)=Auxiliar_2(x);
        end
    end
end

fprintf('\n    Orden de turnos:\n\n')
disp(Matriz_principal_2)



fprintf('\n                      ASIGNACION DE ESTADISTICAS \n\n')

contador_enemigos=1;
Vida_Jugadores=[0 0];
Vida_Enemigos=[0 0];
Vida = [0 0 0 0];
Defense = [0 0 0 0];
Magia = [0 0 0 0];

for x=1:1:Cantidad_de_participantes
    fprintf('    %s:\n\n',Matriz_principal_2(x))
    Vida(x)=input('    Puntos de vida: ');
    Defense(x)=input('    Puntos de defensa: ');
    Magia(x)=input('    Puntos de magia: ');
    fprintf('\n')

end

Matriz_principal=[Matriz_principal_2;Vida;Defense;Magia];

x2=1;
for y=1:1:4
    for x=1:1:4
        equal = isequal(Participantes(y),Matriz_principal(1,x));
        if equal == 1
            if y<=2
                Vida_Jugadores(y) = Matriz_principal(2,x);
            else
                Vida_Enemigos(x2) = Matriz_principal(2,x);
                x2=x2+1;
            end
        end
    end
end

fprintf('\n\nStats de los jugadores\n\n')
disp(Matriz_principal)
fprintf('\n')

A1=zeros(1, 4);
A2=zeros(1, 4);
Matriz_principal=[Matriz_principal;A1;A2];
Estructura_principal(4)=struct('Jugador',[], 'Stats',[]);
Estructura_principal(1)=struct('Jugador',[], 'Stats',[]);
Estructura_principal(2)=struct('Jugador',[], 'Stats',[]);
Estructura_principal(3)=struct('Jugador',[], 'Stats',[]);

for y=1:1:4
    for x=1:1:4
        equal = isequal(Matriz_principal_2(1,x),Matriz_principal(1,y));
        if equal == 1
        Estructura_principal(x).Jugador = Matriz_principal_2(1,x);
        Estructura_principal(x).Stats = Matriz_principal(2:6,x);
        end
    end
end

for i=1:1:4
disp(Estructura_principal(i))
end

Vida_total_Jugadores=Vida_Jugadores(1)+Vida_Jugadores(2);
Vida_total_Enemigos=Vida_Enemigos(1)+Vida_Enemigos(2);



fprintf('\n                          ¡A LUCHAR! \n\n\n')

Cantidad_de_participantes=4;
x=1;
Turno=0;

%Se utilizan varios ciclos y condiciones para evaluar la situación ocurrida
%en el momento, como ejemplo, los while son clave para el desarrollo del
%juego, el cual dependen de si uno de los bandos siguen con vida
%(representados con las variables lt de lista total de elementos y la
%operación de LifPan, para eliminar a los jugadores).

while(Vida_total_Jugadores>0 && Vida_total_Enemigos>0) 

y=1;
for x=1:1:4
    if x<=2
        if Vida_Jugadores(x)<0
            Vida_Jugadores(x)=0;
        end
    end
    if x>2
        if Vida_Enemigos(y)<0
            Vida_Enemigos(y)=0;
            y=y+1;
        end
    end
end


while (Cantidad_de_participantes>=2)

x=1;
Turno=x;

fprintf(' Turno: %d \n',Turno)
Sec=mod(Turno,4);

fprintf('\n Sigue: ')
fprintf('%s \n',Matriz_principal_2(1,x))


Matriz_principal=Eventh(Matriz_principal,x,A1,A2);
disp(Matriz_principal)
fprintf('\n ----------------------------------------- \n')

LifPan=str2double(Matriz_principal(2,Turno));
if(LifPan<=0)
Cantidad_de_participantes=Cantidad_de_participantes-1;

for w=2:1:4        
Matriz_principal(w,Turno) = 0;
end
end

for i=1:1:Cantidad_de_participantes
if (i==1)
Vida_Jugadores(i)=Matriz_principal(2,i);
end
if (i==2)
Vida_Jugadores(i)=Matriz_principal(2,i);
end
if(i==3)
Vida_Enemigos(i-2)=Matriz_principal(2,i);
end
if(i==4)
Vida_Enemigos(i-1)=Matriz_principal(2,i);
end
Vida_total_Jugadores=Vida_Jugadores(1)+Vida_Jugadores(2);
Vida_total_Enemigos=Vida_Enemigos(1)+Vida_Enemigos(2);
end
if(Sec==0)
x=0;
end
x=x+1;
end




if((str2double(Matriz_principal(2,1))>0) || (str2double(Matriz_principal(2,2))>0))
    if((str2double(Matriz_principal(2,3))<=0) && (str2double(Matriz_principal(2,4))<=0))
    disp('                      ¡VICTORIA PARA LOS JUGADORES!')
    end
    break
end

if((str2double(Matriz_principal(2,3))>0) || (str2double(Matriz_principal(2,4))>0))
    if((str2double(Matriz_principal(2,1))<=0) && (str2double(Matriz_principal(2,2))<=0))
    disp('                      ¡VICTORIA PARA LOS ENEMIGOS!')
    end
    break
end
end
