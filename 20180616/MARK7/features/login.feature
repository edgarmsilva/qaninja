#language: pt

Funcionalidade: login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuário cadastrado
    Posso logar no sistema
    
    # email e senha
    # DDT = > Data driven testing

    Cenário: Login do usuário

        Dado que eu acessei o formulário de login
        Quando faço o login com "eu@papito.io" e "123456"
        Então sou autenticado com sucesso
        E sou redirecionado para o painel de tarefas com a mensagem "Olá, Usuário"

        # ---Mendigo de fraque (não usar mais):
        # Dado que acessei o formulário de login
        # Quando preencho o campo email com "eu@gmail.com"
        # E preencho o campo com a senha "123456"
        # Quando clico em Entrar
        # Então sou logado com sucesso
    
    Cenário: senha inválida

        Dado que eu acessei o formulário de login
        Quando faço login com "eu@papito.io" e "teste"
        Então devo ver a mensagem de alerta "Senha inválida."
    
    Cenário: usuário não existe

        Dado que eu acessei o formulário de login
        Quando faço login com "eu@gmail.com" e "123456"
        Então devo ver a mensagem de alerta "Usuário não cadastrado."

