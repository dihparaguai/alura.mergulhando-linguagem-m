// Função Temperatura Concatenação
(temperatura as number) =>
let
    mensagem =
        if temperatura > 37 then Number.ToText(temperatura) &" / Quente"
        else if temperatura <= 0 then Number.ToText(temperatura) &" / Frio"
        else Number.ToText(temperatura) &" / Ameno"
in
    mensagem

// Tabela Temperatura com Função Temperatura Concatenação Invocada
let
    Fonte = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WMjJQitWJVjKGUKZgUhdKmYEpM4iUJZiEKYcpNEAWNYQaAqEgus2ROSamyOp0IUbqgnTHAgA=", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [#"Temperatura" = _t]),
    
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"Temperatura", Int64.Type}}),

    // para cada linha (each) foi aplicado a funcao na linha atual ( _ )
    transformacao_coluna = Table.TransformColumns(#"Tipo Alterado", {"Temperatura", each #"Função Temperatura Concatenação"( _ )})
in
    transformacao_coluna


Resultado:
Temperatura
20 / Ameno
30 / Ameno
5 / Ameno
-5 / Frio
-6 / Frio
60 / Quente
9 / Ameno
20 / Ameno
35 / Ameno
-50 / Frio
20 / Ameno
10 / Ameno
50 / Quente
6 / Ameno
70 / Quente
6 / Ameno
45 / Quente
10 / Ameno
-9 / Frio
-20 / Frio
