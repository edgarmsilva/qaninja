class Navbar <SitePrism::Page
    element :menu_usuario, '.profil-link a[href *= dropdown]'
    element :link_sair, '.profil-link a[href $= logout]'
end