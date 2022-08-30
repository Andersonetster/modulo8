#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de produtos

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios

Quando seleciono a cor, o tamanho e a quantidade
E clico em comprar
Então deve aparcer uma mensagem: "Adicionado com Sucesso!"

Cenário: Deve permitir apenas 10 produtos por venda

Quando seleciono a cor, o tamanho e a quantidade de "11"
E clico em comprar
Então deve aparcer uma mensagem: "Permitido no máximo 10 unidades"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando seleciono a cor, o tamanho e a quantidade
E clico no botão Limpar
Então as seleções deverão ser desmarcadas

