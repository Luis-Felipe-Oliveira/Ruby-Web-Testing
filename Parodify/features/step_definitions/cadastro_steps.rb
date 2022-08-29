Dado("que acesso a página de cadastro") do
  visit "http://parodify.herokuapp.com/" #comando para acessar a pagina no navegador
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash #comando rows_hash converte o formato texto do bdd em um objeto nativo do ruby e o LOG imprime na tela do console
  remover user[:email]
  find("input[name*=email]").set user[:email] #find busca o elemento, .set user preenche o campo
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:confirma_senha]

  click_on "Cadastrar"
end

Então ("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem:{string}") do |expect_message|
  alert = find(".message p") #usa o find e encontra o mensagem, guardando o texto na variavel alert
  expect(alert.text).to eql expect_message #comando do rspec que pegar o valor da varial e compara atraves do eql com o valor passado
end

Quando("acesso a página de cadastro") do
  steps %(
  Dado que acesso a página de cadastro
)
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css
end
