Dado("Login com {string} e {string}") do |email, password|
  visit "http://parodify.herokuapp.com/" #comando para acessar a pagina no navegador
  click_on "Login"

  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click #procuro com o find passo a pesquisa pelo #{} e uso o metodo downcase para transformar tudo em caixa baixa
  sleep 10
end

Quando("toca a seguinte canção:") do |table|
  @parody = table.rows_hash #@ permite utilizar a variavel em outras step
  find("a", text: @parody[:banda]).click #busco o termo a(css),o texto que vem da table que esta em parody no campo banda
  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click
end

Então("essa parodia deve ficar em modo de reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parody[:parodia]
end
