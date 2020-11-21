#language: pt

Funcionalidade: Login de Cliente
    Para que eu possa realizar login
    Sendo um usuário Cliente devidamente cadastrado no aplicativo
    Posso acessar a plataforma Grandson

@login
Cenario: Login
    Dado que eu digito "cliente@email.com" e "123456"
    Quando clico em Entrar 
    Entao posso ver um parceiro disponivel