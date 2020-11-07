class Login

    def initialize
        #DADOS CADASTRADOS
        @email_login = "//*[contains(@resource-id, 'editTextUsuario')]/descendant::android.widget.EditText" 
        @senha_login =  "//*[contains(@resource-id, 'editTextSenha')]/descendant::android.widget.EditText"
    end

    def login_cliente_btn
        find_element(id: "com.example.grandson:id/btLogin").click
        sleep 3
    end

    def autenticando_app
        find_element(xpath: @email_login).send_keys("lucas@gamil.com")
        find_element(xpath: @senha_login).send_keys("12345678")
    end

    def entrar_app
        find_element(id: "com.example.grandson:id/btLogin").click
        sleep 3
    end

    def solicitar_parceiro
        find_element(id: "com.example.grandson:id/NomeParceiro").click
        sleep 3
    end
end