# class LoginPage
#     include Capybara::DSL

#     def campo_email
#         find('input[name=email]')

#     end

#     def campo_senha
#         find('input[title$=password]')
       
#     end

#     def botao_entrar
#         find('button[id*=btnLogin]')
        
#     end
    
#     def alerta_login
#         find('.alert-login')
#     end

# end


class LoginPage < SitePrism::Page
 

    element :campo_email, 'input[name=email]'
    element :campo_senha, 'input[title$=password]'
    element :botao_entrar, 'button[id*=btnLogin]'
    element :alerta_login, ".alert-login"

    def logar(email,senha)
        campo_email.set email
        campo_senha.set senha
        botao_entrar.click  
    end
end