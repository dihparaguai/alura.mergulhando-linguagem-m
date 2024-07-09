// Tabela com Acesso a um Elemento
let
    Fonte = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WcklMyS9WMFTSgbKM4CxjpdhYAA==", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [#"Coluna 1" = _t, #"Coluna 2" = _t, #"Coluna 3" = _t]),
    
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"Coluna 1", type text}, {"Coluna 2", type text}, {"Coluna 3", type text}}),

    acesso_registro = #"Tipo Alterado"[#"Coluna 1"]{0}
in
    acesso_registro

Tabela:
Coluna 1	Coluna 2	Coluna 3
Dados 1	Dados 2	Dados 3

Acesso:
Dados 1
