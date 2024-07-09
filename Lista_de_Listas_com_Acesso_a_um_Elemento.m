// Lista de Listas com Acesso a um Elemento
let
    lista_numeros = {1 .. 99},
    lista_alfabeto = {"A" .. "Z"},
    mescla_listas = {lista_numeros, lista_alfabeto}
in
    mescla_listas{1}{5}
