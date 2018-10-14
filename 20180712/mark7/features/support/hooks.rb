

Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @navbar = Navbar.new

end

Before('@autenticado') do
    visit '/login'
    @login_page.logar('edteste@esteste.com','123456')
    # sleep 5
    @tarefas_page.wait_for_painel
end

After('@Logout') do
    @navbar.logout
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.tr(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"

    # if scenario.falhou?
    #     screenshot = "log/screenshots/failed/#{nome_cenario}.png"
    # else
    #     screenshot = "log/screenshots/#{nome_cenario}.png"
    # end

    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidência')
    
end
