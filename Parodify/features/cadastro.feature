#language: pt   

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas


@happy
Cenario: Cadastro 
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email               |abcd@hotmail.com|
        |senha               |abc123          |
        |confirma_senha      |abc123          |
    Então devo ser redirecionado para a área logada

Esquema do Cenário: Tentativa de Cadastro


    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email               | <email> |
        |senha               | <senha> |
        |confirma_senha      | <confirma_senha> |
    Então devo ver a mensagem:"<mensagem_saida>"


    Exemplos:
    | email            | senha  | confirma_senha | mensagem_saida                        |
    |                  | abc123 | abc123         | Oops! Informe seu email.              |
    | abcd@hotmail.com |        |                | Oops! Informe sua senha.              |
    | abcd@hotmail.com | abc123 | 1234           | Oops! Senhas não são iguais.          |
    |                  |        |                | Oops! Informe seu email e sua senha.  |


Cenario: Validação do campo email

Quando acesso a página de cadastro
Então deve exibir o seguinte css: "input[type=email"




