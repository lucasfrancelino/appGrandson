Dado('que eu acesso a tela de Cadastro') do
    @clliente = CadastroCliente.new
    @clliente.cadastrar_cliente
  end
  
  Quando('informo os dados pessoais') do
    @clliente.cliente_fisico
  end

  Quando('informo os dados pessoais fake') do
    @clliente.cadastrar_dados_cliente
  end
  
  Quando('informo os dados de pagamento de um cartao de credito') do
    @clliente.cadastro_cartao
  end
  
  Entao('vejo na tela de Home os parceiros disponiveis') do
    pending # Write code here that turns the phrase above into concrete actions
  end

  #Cadastro incorreto
  # Quando('informo os dados pessoais {string} e {string} e {int} e {int} e {int} e {int} e {int} e {string}') do |nome, email, telefone, senha1, senha2, cep, numero, complemento|
  #   @clliente.cadastro_incorreto(nome, email, telefone, senha1, senha2, cep, numero, complemento)
  # end
  
  # Entao('devo ver a seguinte {string} como alerta') do |msg|
  #   err = find_element(xpath: "//*[contains(@resource-id, 'content')]/descendant::android.widget.EditText")
  #   expect(err.text).to eql msg
  # end