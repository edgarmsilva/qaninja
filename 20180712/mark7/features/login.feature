#language: pt

Funcionalidade: Login
    Para que eu possa ver as minhas tarefas
    Sendo um usuário cadastrado
    Posso logar no sistema

    #
Contexto: Formulário
        Dado que eu acessei o formulário de Login

    @login @Logout
    Cenario: Login do usuário

        Quando faço login com "edteste@esteste.com" e "123456"
        Então sou autenticado com sucesso
        E sou redirecionado para o painel de tarefas com a mensagem "Olá, edgar"

    Esquema do Cenário: Tentativa de Logar
        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem de alerta "<saida>"

        Exemplos: 
        | email                        | senha   | saida                       |
        | eu@papito.io                 | xpto123 | Senha inválida.             |
        | padrequevedo@noequiziste.org | 123456  | Usuário não cadastrado.     |
        | fernando&qaninja.io          | 123456  | Email incorreto ou ausente. |
        |                              | 123456  | Email incorreto ou ausente. |
        | eu@papito.io                 |         | Senha ausente.              |

    
 


        
    
