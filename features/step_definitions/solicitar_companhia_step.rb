Dado('que estou autenticado {string} e {string}') do |email, senha|
    @login = Login.new
    @login.login_cliente_btn
    find_element(xpath: "//*[contains(@resource-id, 'editTextUsuario')]/descendant::android.widget.EditText").send_keys email
    find_element(xpath: "//*[contains(@resource-id, 'editTextSenha')]/descendant::android.widget.EditText").send_keys senha
    @login.entrar_app
end

Quando('agendo um servio com um parceiro') do
    @agendamento = SolicitarCompanhia.new
    @agendamento.solicitar_parceiro
end

Entao('vejo os detalhes do servico') do
    elemento = find_element(id: "com.example.grandson:id/imgPerfilParceiro")
    expect(elemento.displayed?).to be true
end