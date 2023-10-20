            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu seja um cliente da EBAC-SHOP
            E eu esteja na página de Produtos

            Cenário: Configurar produto com sucesso
            Quando eu seleciono os campos:
            | produto                        | size | color  | quantidade |
            | "Ryker LumaTech™ Tee (V-neck)" | XS   | Orange | 2          |
            E clico no botão comprar
            Então eu devo ver uma mensagem de sucesso: "2 × “Ryker LumaTech™ Tee (V-neck)” foram adicionados no seu carrinho."

            Cenário: Validar campos Obrigatórios
            Quando eu não seleciono os campos: Size, Color, Quantidade
            E clico no botão comprar
            Então eu devo ver a mensagem "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

            Cenário: Validar Quantidade de produtos por venda
            Quando eu seleciono os campos:
            | produto                        | size | color  | 
            | "Ryker LumaTech™ Tee (V-neck)" | XS   | Orange | 
            E preencho a quantidade de produtos maior que 10 por venda
            Então eu o sistema não deve permitir a inserção no carrinho
        
            Cenário: Validar botão Limpar
            Quando eu seleciono os campos Size e/ou Color
            E clico no botão limpar
            Então a página deve voltar ao estado original
