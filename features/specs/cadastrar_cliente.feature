#language: pt

Funcionalidade: Cadastro de Cliente
    Para que eu possa realizar Cadastro
    Sendo um usuário Cliente
    Posso registrar meus dados na plataforma Grandson

@cadastro
Cenario: Cadastro de cliente correto
    Dado que eu acesso a tela de Cadastro
    Quando informo os dados pessoais
    E informo os dados de pagamento de um cartao de credito
    Entao vejo na tela de Home os parceiros disponiveis


@cadastro
Cenario: Cadastro de cliente fake
    Dado que eu acesso a tela de Cadastro
    Quando informo os dados pessoais fake
    E informo os dados de pagamento de um cartao de credito
    Entao vejo na tela de Home os parceiros disponiveis

# @cadastroErrado
# Esquema do Cenario: Cadastro de cliente incorretos
#     Dado que eu acesso a tela de Cadastro
#     Quando informo os dados pessoais <Nome> e <E-mail> e <Telefone> e <Senha1> e <Senha2> e <Cep> e <Numero> e <Complemento>
#     Entao devo ver a seguinte <Mensagem> como alerta

#     Exemplos:
#     | Nome               | E-mail            | Telefone    | Senha1 | Senha2 | Cep      | Numero | Complemento   | Mensagem               |
#     | ""                 | "lucas@gamil.com" | 61985934110 | 123    | 123    | 72231609 | 45     | "tste"        | "Campo Vazio!"         |
#     | "Lucas Francelino" | "lucas"           | 61985934110 | 123    | 123    | 72231609 | 45     | "tste"        | "Email inválido!"      |
#     | "Lucas Francelino" | "lucas@gamil.com" |             | 123    | 123    | 72231609 | 45     | "tste"        | "Campo Vazio!"         |
#     | "Lucas Francelino" | "lucas@gamil.com" | 61985934110 | 123    | 456    | 72231609 | 45     | "tste"        | "Senhas não coinciden" |
#     | "Lucas Francelino" | "lucas@gamil.com" | 61985934110 | 123    | 123    | 12234567 | 45     | "tste"        | "CEP invalido"         |
#     | "Lucas Francelino" | "lucas@gamil.com" | 61985934110 | 123    | 123    | 72231609 |        | "tste"        | "Campo Vazio!"         |
#     | "Lucas Francelino" | "lucas@gamil.com" | 61985934110 | 123    | 123    | 72231609 | 45     |               | "Campo Vazio!"         |
