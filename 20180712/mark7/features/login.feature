#language: pt

Funcionalidade: Login
    Para que eu possa ver as minhas tarefas
    Sendo um usuário cadastrado
    Posso logar no sistema

    # Email e senha
    
    # DDT => Data Driven Testing

    # @login @Logout
    # Cenario: Login do usuário

    #     Dado que eu acessei o formulário de Login
    #     Quando faço login com "eu@papito.io" e "123456"
    #     Então sou autenticado com sucesso
    #     E sou redirecionado para o painel de tarefas com a mensagem "Olá, Fernando"
        
    # @login_tentativa
    # Cenario: Senha Inválida

    #     Dado que eu acessei o formulário de Login
    #     Quando faço login com "eu@papito.io" e "xpto123"
    #     Então devo ver a mensagem de alerta "Senha inválida."
    
    # @login_tentativa
    # Cenário: Usuário não existe

    #     Dado que eu acessei o formulário de Login
    #     Quando faço login com "padrequevedo@noequiziste.org" e "123456"
    #     Então devo ver a mensagem de alerta "Usuário não cadastrado."

    # Cenário: Email incorreto

    #     Dado que eu acessei o formulário de Login
    #     Quando faço login com "fernando&qaninja.io" e "123456"
    #     Então devo ver a mensagem de alerta "Email incorreto ou ausente."




# enxugando tudo parte 1: ---------------------------------------------------------------
# Adição do contexto:

# Contexto: Formulário
#         Dado que eu acessei o formulário de Login

#     @login @Logout
#     Cenario: Login do usuário

#         Quando faço login com "eu@papito.io" e "123456"
#         Então sou autenticado com sucesso
#         E sou redirecionado para o painel de tarefas com a mensagem "Olá, Fernando"
        
#     @login_tentativa
#     Cenario: Senha Inválida

#         Quando faço login com "eu@papito.io" e "xpto123"
#         Então devo ver a mensagem de alerta "Senha inválida."
    
#     @login_tentativa
#     Cenário: Usuário não existe

#         Quando faço login com "padrequevedo@noequiziste.org" e "123456"
#         Então devo ver a mensagem de alerta "Usuário não cadastrado."

#     Cenário: Email incorreto

#         Quando faço login com "fernando&qaninja.io" e "123456"
#         Então devo ver a mensagem de alerta "Email incorreto ou ausente."



# enxugando tudo parte 2: ---------------------------------------------------------------
# Adição do Place Holder:

Contexto: Formulário
        Dado que eu acessei o formulário de Login

    @login @Logout
    Cenario: Login do usuário

        Quando faço login com "eu@papito.io" e "123456"
        Então sou autenticado com sucesso
        E sou redirecionado para o painel de tarefas com a mensagem "Olá, Fernando"

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

    teste
 


        
    
