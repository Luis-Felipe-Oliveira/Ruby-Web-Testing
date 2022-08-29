#language: pt

Funcionalidade: Login

Sendo um usuário previamente cadastrado 
Quero acessar o sistema com meu email e senha
Para que eu posssa ter acesso as playlists do Parodify

Cenario: Login do usuário

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "test@hotmail.com" e "pwd123"
    Então devo ser redirecionado para a área logada

Esquema do Cenário: tentativa de login

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "<email>" e "senha"
    Então devo ver a mensagem de erro:"Oops! Email e/ou senha incorretos."

    Exemplos:
    |email           |senha   |
    |test@302.com.br |abc123  |
    |test@hotmail.com|pwd1234 |
    