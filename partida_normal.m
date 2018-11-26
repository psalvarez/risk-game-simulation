function res = partida_normal (n_att, n_def);
%%%%% PARTIDA REGULAR%%%%%

%%Partida llevada a cabo siguiendo la secuencia natural


def = 2;
att = 3;

bat = [n_att n_def];

while (bat(1) > 0 & bat(2) > 0)
    if n_def >= 2
        def = 2;
    else
        def = 1;
    end
    
    if n_att >= 3
        att = 3;
    elseif n_att == 2
        att = 2;
    elseif n_att == 1
        att == 1;
    end
        
    res = tirada(att, def);
    bat = bat + res;
end

if bat(1) > bat(2) 
    %disp('Ganan atacantes')
    res = [1 0];
else
    %disp('Ganan defensores')
    res = [0 1];
end

end