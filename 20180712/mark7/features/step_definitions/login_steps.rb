
Dado("que eu acessei o formulário de Login") do
    visit 'https://mark7.herokuapp.com/'  

end

Quando("faço login com {string} e {string}") do |email, senha|
    # @email = 'teste@teste.com'
    @email = email
    find('input[name=email]').set email
    find('input[title$=password]').set senha
    find('button[id*=btnLogin]').click

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
    alerta_login = find('.alert-login')
    expect(alerta_login.text).to eql mensagem_alerta
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