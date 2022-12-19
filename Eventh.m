function action=Eventh(Matriz_principal,x,A1,A2)

Event=menu('Seleccione acción', 'Ataque_Normal', 'Ataque_Mágico', 'Estadísticas');

switch Event                 
  
    case 1  
    Attack=Dicezz(20);         
    Incremento_ataque=Attack+A1(x);          
    Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque);
    action=Matriz_principal;
 
    case 2

        Ataque_magico=menu('Ataques mágicos:','Tajo revés (10)', 'Fireball (15)','Lluvia de meteoros (15)', 'Furia de la hidra (20)', 'Relámpago amarillo (25)', 'Ataúd de arena (28)','Veneno mortal (30)', 'Gran oscuridad (32)', 'Espada alada (35)', 'Cruel sun (42)', 'Full counter (42)', 'Ecuación del caos (45)');
  
        switch Ataque_magico

            case 1
            Costo_de_magia=10;       %Costo: 10 PM
            Dano_minimo=5;           %Rango de valores del dado: 5-25
            Dano_maximo=25;                     
            Double_PM=str2double(Matriz_principal(4,x)); 

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 2
            Costo_de_magia=15;       %Costo: 15 PM
            Dano_minimo=10;          %Rango de valores del dado: 10-25
            Dano_maximo=25;
            Double_PM=str2double(Matriz_principal(4,x));
          
            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 3
            Costo_de_magia=15;       %Costo: 15 PM
            Dano_minimo=13;          %Rango de valores del dado: 13-20 
            Dano_maximo=20;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 4
            Costo_de_magia=20;       %Costo: 20 PM
            Dano_minimo=15;          %Rango de valores del dado: 15-22
            Dano_maximo=22;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 5
            Costo_de_magia=25;       %Costo: 25 PM
            Dano_minimo=15;          %Rango de valores del dado: 15-25 
            Dano_maximo=25;
            Double_PM=str2double(Matriz_principal(4,x));
         
            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 6
            Costo_de_magia=28;       %Costo: 28 PM
            Dano_minimo=20;          %Rango de valores del dado: 20-25 
            Dano_maximo=25;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 7
            Costo_de_magia=30;       %Costo: 30 PM
            Dano_minimo=20;          %Rango de valores del dado: 20-30 
            Dano_maximo=30;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 8
            Costo_de_magia=32;       %Costo: 32 PM
            Dano_minimo=25;          %Rango de valores del dado: 25-30 
            Dano_maximo=30;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 9
            Costo_de_magia=35;       %Costo: 35 PM
            Dano_minimo=25;          %Rango de valores del dado: 25-35 
            Dano_maximo=35;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 10

            Costo_de_magia=42;       %Costo: 42 PM
            Dano_minimo=35;          %Rango de valores del dado: 35-45 
            Dano_maximo=45;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 11
            Costo_de_magia=42;       %Costo: 42 PM
            Dano_minimo=30;          %Rango de valores del dado: 30-50 
            Dano_maximo=50;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end

            case 12
            Costo_de_magia=45;       %Costo: 45 PM
            Dano_minimo=20;          %Rango de valores del dado: 20-70 
            Dano_maximo=70;
            Double_PM=str2double(Matriz_principal(4,x));

            if(Double_PM>=Costo_de_magia)
                Double_PM=Double_PM-Costo_de_magia;
                Matriz_principal(4,x)=num2str(Double_PM);

                Attack=Dicezzatq(Dano_minimo,Dano_maximo);     
                Incremento_ataque2=Attack+A2(x);

                Matriz_principal=Targeto(Matriz_principal,x,Incremento_ataque2);
            end
        end
  action=Matriz_principal;

  case 3
  Matriz_principal=Statsi(Matriz_principal,x,A1,A2);
  action=Matriz_principal;
end