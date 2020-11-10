#language: pt

@agendamento
Funcionalidade: Agendamento com parceiros
    Para que eu possa ver meus agendamentos
    Sendo um usuário Cliente devidamente cadastrado no aplicativo
    Posso acessar a lista de parceiros com agendamento marcado

Contexto: Agendamento
    Dado que estou autenticado "lucas@gamil.com" e "12345678"
    Quando acesso servicos agendados

# @agendamento
Cenario: Listar agendamento
    Entao posso ver uma lista de parceiros agendadaos comigo

# @agendamento
Cenario: Detalhar agendamento
    E clico em um pareiro
    Entao posso ver os detalhes do meu agendamento

# @agendamento
Cenario: Cancelar agendamento
    E clico em um pareiro
    Entao posso cancelar meu agendamento