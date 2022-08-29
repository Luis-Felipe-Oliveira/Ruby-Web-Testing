require "httparty" #importar httparty dentro do modulo helpers

module Helpers
  def remover(email) #metodo para chamar a end point
    HTTParty.get("http://parodify.herokuapp.com/helpers?email=#{email}")
  end
end
