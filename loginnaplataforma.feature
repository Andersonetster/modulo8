#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que estou na tela de checkout

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu digitar o usuário "tests@teste"
E a senha "teste"
Entao deve exibir uma mensagem "Olá Teste!"

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu digitar o usuário "tests123@teste"
E a senha "teste"
Entao deve exibir uma mensagem "Usuário ou senha inválidos"
