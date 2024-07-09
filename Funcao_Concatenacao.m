// Função Concatenação
(nome as text, idade as number) =>
    // como a idade é um numero, convertermos para texto antes de concatenar
    nome &" "&Number.ToText(idade)

// Tabela Função Concatenação
let
    #"Tabela Função" = #table(
    // lista com os nomes das colunas para um registro com os nomes das colunas e seus tipos
    type table
    [
        nome = text,
        data = date,
        idade = number
    ],
    // lista com a lista de valores de cada campo
    {
        // usando #date() para transformar valores em uma data
        {
            "alura", #date(2021,11,15), 20
        },
        {
            "power bi", #date(2024,10,30), 30
        }
    }
),
    #"Função Personalizada Invocada" = Table.AddColumn(#"Tabela Função", "funcao_concatenacao", each #"Função Concatenação"([nome], [idade]))
in
    #"Função Personalizada Invocada"


Resultado:
nome,	data,	idade,	funcao_concatenacao
alura,	15/11/2021,	20,	alura 20
power bi,	30/10/2024,	30,	power bi 30
