#language: pt

Funcionalidade: Reproduzir Paródia

Sendo um usuario cadastrado
quero reproduzir musicas no player do Parodify
Para que eu possa ouvir as paródias das minhas bandas favoritas

Contexto: Login
    * Login com "test@hotmail.com" e "pwd123"

Cenário: Ouvir Paródia

    Dado que eu gosto muito de "Rock"
    Quando toca a seguinte canção:
        |parodia| Sprints de Luta Sprints de Gloria|
        |banda  | Charlie Brown Bug                |
    Então essa parodia deve ficar em modo de reprodução
