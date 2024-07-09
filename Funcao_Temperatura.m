// Função Temperatura
(temperatura as number) =>
let
    mensagem =
        if temperatura > 37 then "Quente"
        else "Frio"
in
    mensagem

// Função Temperatura Invocada
let
    Fonte = #"Função Temperatura"(40) // Resultado: Quente
in
    Fonte

// Função Temperatura Invocada (2)
let
    Fonte = #"Função Temperatura"(30) // Resultado: Frio
in
    Fonte
