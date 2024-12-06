class LoginPage < SitePrism::Page # O Siteprism faz com que a URL setada seja carregada automaticamente "load"

    set_url '/login' # Caminho relativo da URL
    element :emailField, :id, 'username'
    element :passwordField, :id, 'password'
    element :loginButton, :xpath, '//button[@type="submit"]'

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end