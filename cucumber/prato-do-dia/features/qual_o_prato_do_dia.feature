#language:pt

Funcionalidade: Qual é o prato do Dia
    Queremos saber qual o prato do dia na capital paulista

    # Cenario: Hoje é dia de Virado a Paulista

    #     # Dado que hoje é segunda-feira 
    #     Dado que hoje é "segunda-feira" 
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Virado a Paulista"
    
    # Cenario: Hoje é dia de Dobradinha

    #     # Dado que hoje é terça-feira
    #     Dado que hoje é "terça-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Dobradinha"

    # Cenario: Hoje é dia de Feijoada

    #     Dado que hoje é "quarta-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Feijoada"
    
    Esquema do Cenario: Prato do dia
        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser <resposta>    

    Exemplos: 
    | dia             | resposta            |
    | "segunda-feira" | "Virado a Paulista" |
    | "terça-feira"   | "Dobradinha"        |
    | "quarta-feira"  | "Feijoada"          |
    | "quinta-feira"  | "Macarronada"       |
    | "sexta-feira"   | "File de Merluza"   |
    | "sabado"        | "Veja cardapio"     |
    | "domingo"       | "Fechado"           |
    | "xpto"          | "Dia Invalido"      |
    | "abc123"        | "Dia Invalido"      |