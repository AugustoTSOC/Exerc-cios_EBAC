            #language: pt

            #-------------------------------------------------------------------------
            #[US-0001]:
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E tambem escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a pagina de compra de um produto na plataforma Ebac-Shop

            Cenario: Campos obrigatorios não selecionados
            Quando o usuário não selecionar ambos a cor, tamanho e quantidade
            Então deve exibir a mensagem "Selecione os campos obrigatorios"

            Cenario: Quantidade de produtos por venda não permitido
            Quando o usuário selecionar mais de 10 produtos por venda
            Então deve exibir a mensagem "Permitimos apenas 10 produtos por venda"

            Cenario: Clicar no botão limpar
            Quando o usuário clicar no botão escrito "Limpar"
            Então deve voltar todas as configurações ao estado original
            #--------------------------------------------------------------------------
            #[US-0002]:
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de autenticação na plataforma Ebac-Shop

            Cenario: Inserir dados válidos
            Quando o usuário inserir o email "joãocarlo@gmail.com.br"
            E e inserir tambem a sua senha "mortadela123"
            Então deve exibir a mensagem "Ola João Carlo!"

            Cenario: Inserir dados inválidos
            Quando o usuário inserir o email "joãocarros@gmail.com"
            E e inserir tambem a sua senha "mô5555"
            Então deve exibir a mensagem "Usuário ou senha inválidos"
            #---------------------------------------------------------------------------
            #[US-0003]:
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a pagina de cadastro na plataforma Ebac-Shop

            Cenario: Inserir todos os dados válidos nos campos obrigatórios
            Quando o usuário preencher todos os campos obrigatórios marcados com asteriscos
            E e os dados forem válidos
            Então deve exibir a mensagem "Cadastro concluido com sucesso"

            Cenario: Tentativa de cadastro com campos obrigatórios vazios
            Quando o usuário deixar de preencher algum campos obrigatório marcado com asterisco
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Cenario: E-mail com formato inválido
            Quando o usuário inserir o email "JoãoCarrosgmail.com"
            Então deve exibir a mensagem "Email com formato inválido"

            Esquema do Cenario: Cadastrar multiplos usuários
            Quando o usuário preencher todos os <dados obrigatorios>
            E e o <email> estiver em um formato válido
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | dados obrigatorios | email                    | mensagem                                                             |
            | Preenchido         | "pedrinazoio.com"        | "Email com formato inválido"                                         |
            | Não Preenchidos    | "zacacometudo@gmail.com" | "Preencha todos os campos obrigatórios"                              |
            | Não Preenchidos    | "tro2190000@"            | "Email com formato inválido e Preencha todos os campos obrigatórios" |
            | Preenchidos        | "gororoba@gmail.com"     | "Cadastro concluido com sucesso"                                     |
#---------------------------------------------------------------------------
#Atividade Ebac Realizada Por: Augusto Tavares dos Santos Oliveira Carvalho