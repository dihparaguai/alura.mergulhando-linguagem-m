// Função Loop / Recursiva
let
    lista_pares = 
        // Gera uma lista numerica com condições
        List.Generate(
            () => 10, // gera o valor 10, mas pode ser um valor vindo de uma função
            each _ > 1, // enquanto o valor atual for maior que 1 
            each _ -2 // subtraia 2 do ultimo valor
        )

        // a lista gerada será 10,8,6,4,2
in
    lista_pares
