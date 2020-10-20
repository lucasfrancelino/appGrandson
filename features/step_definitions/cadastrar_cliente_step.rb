Dado('que eu acesso a tela de Cadastro') do
    sleep 10
    find_element(id: "com.example.grandson:id/btCadastro").click
    # appActivity = "com.example.grandson.View.Grandson"

  end
  
  Quando('informo os dados pessoais:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('informo os dados de pagamento de um cartao de credito:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('vejo na tela de Home os parceiros disponiveis') do
    pending # Write code here that turns the phrase above into concrete actions
  end