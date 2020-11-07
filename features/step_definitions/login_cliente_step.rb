Dado('que eu digito {string} e {string}') do |email, senha|
  @login = Login.new
  @login.login_cliente_btn
  find_element(xpath: "//*[contains(@resource-id, 'editTextUsuario')]/descendant::android.widget.EditText").send_keys email
  find_element(xpath: "//*[contains(@resource-id, 'editTextSenha')]/descendant::android.widget.EditText").send_keys senha
end

Quando('clico em Entrar') do
  @login.entrar_app
end

Entao('posso solicitar um parceiro disponivel') do
  @login.solicitar_parceiro
end