%%%% Comparaci�n batallas %%%%%%%

k = 10000;

n_att = 4; %% N�mero de SOLDADOS atacando
n_def = 3; %% N�mero de SOLDADOS defendiendo
bat_norm = [0 0];
bat_1b1 = [0 0];

for i = 1:k;
   bat_norm = bat_norm + partida_normal(n_att, n_def);
   bat_1b1 = bat_1b1 + partida_1b1(n_att, n_def);
end

if bat_norm(1) > bat_norm(2) 
    disp('Ganan m�s atacantes en partida normal:')
    disp((bat_norm(1)/k)*100); %Porcentaje de victorias
else
    disp('Ganan m�s defensores en partida normal:')
    disp((bat_norm(2)/k)*100);
end

if bat_1b1(1) > bat_1b1(2) 
    disp('Ganan m�s atacantes en partida 1 a 1:')
    disp((bat_1b1(1)/k)*100);
else
    disp('Ganan m�s defensores en partida 1 a 1:')
    disp((bat_1b1(2)/k)*100);
end