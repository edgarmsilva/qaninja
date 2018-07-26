
Dado("que eu acessei a página inicial") do
    visit 'http://automationpractice.com/index.php'  

end

Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    find('.header_user_info').click
    find('#email').set email
    find('#passwd').set senha
    find('#SubmitLogin').click

end

Então("sou autenticado com sucesso") do
    menu_usuario = find('.account')
    expect(menu_usuario.text).to eql "testeed testeed"

end

Então("sou redirecionado para a tela da minha conta com a mensagem {string}") do |msg_boas_vindas|
    painel = find('.info-account')
    expect(painel).to have_content msg_boas_vindas
end
  

Então("devo ver a mensagem de alerta {string}") do |mensagem_alerta|
    alerta_login = find('ol')
    expect(alerta_login.text).to eql mensagem_alerta
end
