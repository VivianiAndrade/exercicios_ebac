            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu seja um cliente da EBAC-SHOP
            E eu esteja na página Minha conta

            Esquema do Cenário: Autenticação válida
            Quando eu digitar o username/email address <usuario>
            E a password <senha>
            Então eu devo ser direcionado para a tela de checkout
            Exemplos:
            | usuario            | senha       |
            | "joao@ebac.com.br" | "teste@123" |
            | "joao.machado"     | "teste@123" |


            Esquema do Cenário: Usuário ou senha inválidos
            Quando eu digitar o username/email address <usuario>
            E a password <senha>
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
            Exemplos:
            | usuario            | senha           |
            | "joao@ebac.com.br" | "skdsfoeo22333" |
            | "xjlo@ebac.com.br" | "teste@123"     |


