Dado('que eu acesso a tela de Cadastro') do
    @clliente = CadastroCliente.new
    @clliente.cadastrar_cliente
  end
  
  Quando('informo os dados pessoais') do
    @clliente.cadastrar_dados_cliente
  end
  
  Quando('informo os dados de pagamento de um cartao de credito') do
    @clliente.cadastro_cartao
  end
  
  Entao('vejo na tela de Home os parceiros disponiveis') do
    pending # Write code here that turns the phrase above into concrete actions
  end