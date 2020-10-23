#language: pt

Funcionalidade: Cadastro de Cliente
    Para que eu possa realizar Cadastro
    Sendo um usuário Cliente
    Posso registrar meus dados na plataforma Grandson

@cadastro
Cenario: Cadastro de cliente correto
    Dado que eu acesso a tela de Cadastro
    Quando informo os dados pessoais
        # | Nome        | Lucas Francelino               |
        # | E-mail      | lucas@gamil.com                |
        # | Telefone    | 61985934110                    |
        # | Senha       | 12345678                       |
        # | Senha       | 12345678                       |
        # | Cep         | 72231609                       |
        # | Numero      | 234                            |
        # | Complemento | Teste de software automatizado |
    E informo os dados de pagamento de um cartao de credito
        # | CPF              | 05710695173      |
        # | Nome             | Rafael Moreira   |
        # | Numero do cartao | 1234123412341234 |
        # | Data de Validade | 122029           |
        # | CVV              | 1234             |
    Entao vejo na tela de Home os parceiros disponiveis    

