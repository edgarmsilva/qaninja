#language: pt

# Automação QA Challenge
# Autor: Edgar Moreira da Silva
# 20180725

Funcionalidade: Login
    Para que eu possa acessar minha conta
    Sendo um usuário cadastrado
    Posso logar no sistema


Contexto: Formulário
        Dado que eu acessei a página inicial

    @login @Logout
    Cenario: Login do usuário

        Quando faço login com "testeed@testeed.com" e "123456"
        Então sou autenticado com sucesso
        E sou redirecionado para a tela da minha conta com a mensagem "Welcome to your account."

    Esquema do Cenário: Logins inválidos
        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem de alerta "<alerta>"

        Exemplos: 
      | email                  | senha  | alerta                     |
      | testeed@testeed.com    | 1234   | Invalid password.          |
      | testeed321@testeed.com | 123456 | Authentication failed.     |
      | testeed&testeed.com    | 123456 | Invalid email address.     |
      |                        | 123456 | An email address required. |
      | testeed@testeed.com    |        | Password is required.      |

 


        
    
