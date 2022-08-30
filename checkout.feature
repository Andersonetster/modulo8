            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra
            Contexto:
            Dado que estou na tela de Checkout
            
            Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando preencho os campos obrigatórios <nome>;<Sobrenome>; <Pais>; <Endereco>;<Cidade>; <CEP>;<Telefone>;<e-mail>
            E informo o pagamento
            E clicoem "Finalizar Compra"
            Então Deve aparecer a Seguinte <mensagem>
            
            Exemplos:
            | nome       | Sobrenome | Pais     | Endereco      | Cidade      | CEP         | Telefone      | e-mail               | mensagem                      |
            | "Anderson" | "Santos"  | "Brasil" | "Av Paulista" | "São Paulo" | "01000-000" | "11999-47844" | "anderson@email.com" | "Compra efetuada com Sucesso" |
           
            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando preencho os campos obrigatórios <nome>;<Sobrenome>; <Pais>; <Endereco>;<Cidade>; <CEP>;<Telefone>;<e-mail>
            E informo o pagamento
            E clicoem "Finalizar Compra"
            Então Deve aparecer a Seguinte <mensagem>

            Exemplos:
            | nome       | Sobrenome | Pais     | Endereco      | Cidade      | CEP         | Telefone      | e-mail               | mensagem                      |
            | "Anderson" | "Santos"  | "Brasil" | "Av Paulista" | "São Paulo" | "01000-000" | "11999-47844" | "anderson@.com"      | "Email Inválido"              |

            Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
            Quando preencho os campos obrigatórios <nome>;<Sobrenome>; <Pais>; <Endereco>;<Cidade>; <CEP>;<Telefone>;<e-mail>
            E informo o pagamento
            E clico em "Finalizar Compra"
            Então Deve aparecer a Seguinte <mensagem>

            Exemplos:
            | nome       | Sobrenome | Pais     | Endereco      | Cidade      | CEP         | Telefone      | e-mail               | mensagem                      |
            | "Anderson" | ""        | "Brasil" | "Av Paulista" | ""          | "01000-000" | "11999-47844" | "anderson@email.com" | "Preenchimento obrigatório"   |