            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu seja um cliente da EBAC-SHOP
            E eu esteja na página Checkout

            Cenário: Cadastro com sucesso
            Quando eu preencho todos os campos obrigatórios corretamente
            Então eu devo ser direcionada para a tela de Pedido Recebido com sucesso

            Esquema do Cenário: Campo e-mail com formato inválido
            Quando eu preencho o campo e-mail <email>
            Então deve exibir uma mensagem de erro: "E-mail de faturamento inválido"
            Exemplos:
            | email            |
            | joao.ebac.com.br |
            | joao@ebac        |

            Esquema do Cenário: Cadastro com Campos vazios
            Quando eu não preencho o campo obrigatório <campo>
            Então deve exibir uma mensagem de alerta: <mensagem>
            Exemplos:
            | campo     | mensagem                                                                 |
            | Nome      | "O campo "Nome" do endereço de faturamento é um campo obrigatório."      |
            | Sobrenome | "O campo "Sobrenome" do endereço de faturamento é um campo obrigatório." |
            | Endereço  | "O campo "Endereço" do endereço de faturamento é um campo obrigatório."  |
            | Cidade    | "O campo "Cidade" do endereço de faturamento é um campo obrigatório."    |
            | CEP       | "O campo "CEP" do endereço de faturamento não é um CEP válido."          |
            | Telefone  | "O campo "Telefone" do endereço de faturamento é um campo obrigatório."  |
            | Condições | "Leia e aceite os termos e condições para prosseguir com o seu pedido."  |