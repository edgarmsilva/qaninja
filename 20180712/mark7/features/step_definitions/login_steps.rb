
Dado("que eu acessei o formulário de Login") do
    visit 'https://mark7.herokuapp.com/'  
    @login_page = LoginPage.new
    @navbar = Navbar.new
    @tarefa_page = TarefasPage.new
end

Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    @login_page.logar(email, senha)
end

Então("sou autenticado com sucesso") do
    expect(@navbar.menu_usuario.text).to eql @email
end

Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |mensagem_ola|
    
    expect(@tarefa_page.painel).to have_content mensagem_ola

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