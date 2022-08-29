#comandos para importar o capybara dentro do cucumber

require "capybara"
require "capybara/cucumber"
require_relative "helpers.rb" #importa o arquivo que tem o modulo do helpers

World(Helpers) #comando carrega o modulo fazendo que tudo se torne execuções nativas
#comando para configurar o capybara no cucumber
Capybara.configure do |config|
  config.default_driver = :selenium_chrome #comando que indica que o drive padrão do teste é o do navegador chrome
end
