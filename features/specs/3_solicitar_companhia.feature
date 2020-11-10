#language: pt

Funcionalidade: Solicitação de companhia
    Para que eu possa realizar uma solicitação de companha
    Sendo um usuário Cliente devidamente cadastrado no aplicativo
    Posso solicitar um parceiro disponivel

@solicitacao
Cenario: Solicitar companhia
    Dado que estou autenticado "cliente@email.com" e "123456"
    Quando agendo um servio com um parceiro
    Entao vejo os detalhes do servico