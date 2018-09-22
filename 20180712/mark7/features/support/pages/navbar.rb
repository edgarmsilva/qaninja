class Navbar <SitePrism::Page
    element :menu_usuario, '.profil-link a[href *= dropdown]'
    element :link_sair, '.profil-link a[href $= logout]'

    def logout
        menu_usuario.click
        link_sair.click
       
    end
    
end