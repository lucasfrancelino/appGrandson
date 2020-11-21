Dado('que eu digito {string} e {string}') do |email, senha|
  @login = Login.new
  @login.login_cliente_btn
  find_element(xpath: "//*[contains(@resource-id, 'editTextUsuario')]/descendant::android.widget.EditText").send_keys email
  find_element(xpath: "//*[contains(@resource-id, 'editTextSenha')]/descendant::android.widget.EditText").send_keys senha
end

Quando('clico em Entrar') do
  @login.entrar_app
end

Entao('posso ver um parceiro disponivel') do
  elemento = find_element(id: "com.example.grandson:id/searchParceiro")
  expect(elemento.displayed?).to be true
end