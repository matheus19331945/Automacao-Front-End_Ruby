Dado('que o usuario queira se logar') do
   puts "Iniciando o carregamento da página de login..."
   puts "URL configurada: #{Capybara.app_host}"
 
   begin
     login.load
     puts "Página carregada com sucesso."
   rescue => e
     puts "Erro ao carregar a página: #{e.message}"
     raise e
   end
 end
 
 
 Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
 end
 
 Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
 end