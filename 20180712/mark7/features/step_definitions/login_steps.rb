
Dado("que eu acessei o formulário de Login") do
    visit 'https://mark7.herokuapp.com/'  

end

Quando("faço login com {string} e {string}") do |email, senha|
    @email = email

    @login_page = LoginPage.new

    @login_page.campo_email.set email
    @login_page.campo_senha.set senha
    @login_page.botao_entrar.click
  


end

Então("sou autenticado com sucesso") do
    menu_usuario = find('.profil-link a[href *= dropdown]')
    expect(menu_usuario.text).to eql @email

end

Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |mensagem_ola|
    painel = find('#task-board')
    expect(painel).to have_content mensagem_ola

end

Então("devo ver a mensagem de alerta {string}") do |mensagem_alerta|
    expect(@login_page.alerta_login.text).to eql mensagem_alerta
end


# -------------------------------------------------------------
# Comandos XML:
# $('#login_email'); <= Busca por ID
# $('.form-control') <= Busca por Classe

# Busca por elementos na sentença

# != <= Contém
# $= <= final da sentença
# ^= <= Início da sentença

# Ex: $('input[title$=password]');