// Importando API Simples
let
    // Faz o acesso à API na web apenas na pagina 01
    #"Fonte com Caminho Relativo" = 
        Web.Contents(
            "https://rickandmortyapi.com/",
            [
                // Mantem separado https://rickandmortyapi.com/api/character/", para aproveitar o uso de parametros
                RelativePath = "api/character/",
                Query =
                [
                    page = "1"
                ]
            ] 
        ),

    // Trás o conteudo(content) como uma lista de registro de cada personagem em Rick n' Morty
    #"Conversão para Json" = 
        Json.Document(
            #"Fonte com Caminho Relativo"
        )[results]

in
    #"Conversão para Json"
