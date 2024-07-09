// Tabela Tipada
#table(
    // trocado a lista com os nomes das colunas para registros com os nomes das colunas e seus tipos
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
)
