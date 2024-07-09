// Função Temperatura Else If
(temperatura as number) =>
let
    mensagem =
        if temperatura > 37 then "Quente"
        else if temperatura <= 0 then "Frio"
        else "Ameno"
in
    mensagem

// Função Temperatura Else If Invocada
let
    Fonte = #"Função Temperatura Else If"(20) // Resultado: Ameno
in
    Fonte

// Função Temperatura Else If Invocada (2)
let
    Fonte = #"Função Temperatura Else If"(-1) // Resultado: Frio
in
    Fonte
