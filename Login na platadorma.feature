# language: pt
Funcionalidade: Login na plataforma EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

    Contexto:
    Dado quero fazer login na plataforma EBAC-SHOP

    Cenário: Usuário válida
    Quando eu digitar o usuário "gabriel123@ebac.com.br"
    E a senha "admin@123"
    Então devera ser direcionado para a tela de checkout

    Cenário: Usuário inválido
    Quando eu digitar o usuário "gabriel1234@ebac.com.br"
    E a senha "admin@12345"
    Então devera exibir uma mensagem de alerta: "usuário ou sennha inválidos"

    Cenário: Autenticar multiplos usuário
    Quando eu digitar o <usuario>
    E a <senha>
    Então deve exibir a <mensagem> de sucesso

    Exemplos:
      | usuario                   | senha       | mensagem      |
      | "gabriel1234@ebac.com.br" | "teste@123" | "Olá Gabriel" |
      | "cleber123@ebac.com.br"   | "teste@123" | "Olá Cleber"  |
      | "jose@ebac.com.br"        | "teste@123" | "Olá Jose"    |
