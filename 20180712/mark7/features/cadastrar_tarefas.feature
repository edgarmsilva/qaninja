#language: pt

# edteste@esteste.com
# 123456

@sprint2
Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas

    - nome da tarefa: Fazer compras
    - Data da etrega: 25/06/2018
    - Tags (compras, supermercado, ketchup)


    @autenticado @nova_tarefa @Logout
    Cenário: Nova tarefa

        Dado que eu tenho uma tarefa com os seguintes atributos:
            | nome | Fazer Compras |
            | Data | 25/06/2018    |
        E eu quero taguear essa tarefa com:
            | tag          |
            | supermercado |
            | ketchhup     |
            | compras      |
        Quando faço o cadastro dessa tarefa
        Então devo ver esta tarefa com o status "Em andamento"
        E devo ver somente 1 tarefa com o nome cadastrado

    @autenticado @tarefa_duplicada @Logout
    Cenário: Tarefa não pode ser duplicada

        Dado que eu tenho uma tarefa com os seguintes atributos:
            | nome | Ler um livro de Go Lang |
            | Data | 25/06/2018              |
        E eu quero taguear essa tarefa com:
            | tag      |
            | go       |
            | estudar  |
            | livro    |
            | hardcore |
        Mas eu já cadastrei essa tarefa e não tinha percebido
        Quando faço o cadastro dessa tarefa
        Então devo ver a mensagem "Tarefa duplicada." ao tentar cadastrar
        E devo ver somente 1 tarefa com o nome cadastrado

