function res = tirada(n_att, n_def)
att0 = 0;
def0 = 0;

while length(att0) > 0
    att = ceil(6*rand([1, n_att])); %Tirada de un dado de 6 caras iguales
    att0 = find(att == 0);
end

while length(def0) > 0
    def = ceil(6*rand([1, n_def]));
    def0 = find(def == 0);
end

att_c = 0; %Contador de atacantes perdidos
def_c = 0; %Contador de defensores perdidos

for i = 1:min(n_att, n_def);
    if max(def) >= max(att)
       att_c = att_c - 1;
    else
        def_c = def_c - 1;
    end
    def(find(max(def))) = -2;
    att(find(max(att))) = -2;
end

res = [att_c, def_c];

end

