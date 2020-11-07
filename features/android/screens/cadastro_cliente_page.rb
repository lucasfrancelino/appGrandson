require 'faker'
require 'cpf_faker'

class CadastroCliente
    def initialize
        # DADOS PESSOAIS
        @nomeInput = "//*[contains(@resource-id, 'textInputNome')]/descendant::android.widget.EditText"
        @email = "//*[contains(@resource-id,'textInputMail')]/android.widget.FrameLayout/android.widget.EditText"
        @telefone = "//*[contains(@resource-id,'textInputTelefone')]/android.widget.FrameLayout/android.widget.EditText"
        @senha1 = "//*[contains(@resource-id,'textInputSenha1')]/android.widget.FrameLayout/android.widget.EditText"
        @senha2 = "//*[contains(@resource-id,'textInputSenha2')]/android.widget.FrameLayout/android.widget.EditText"
        @btnAvancar = '//android.widget.Button[@text="Avançar"]'
        @cep = "//*[contains(@resource-id,'textInputCep')]/android.widget.FrameLayout/android.widget.EditText"
        @numeroCasa = "//*[contains(@resource-id,'textInputNumero')]/android.widget.FrameLayout/android.widget.EditText"
        @complemento = "//*[contains(@resource-id,'textInputComplemento')]/android.widget.FrameLayout/android.widget.EditText"
        
        # DADOS CARTÃO DE CREDITO
        @cpf = "//*[contains(@resource-id,'editTextCpf')]/android.widget.FrameLayout/android.widget.EditText"
        @nomeCartao = "//*[contains(@resource-id,'editTextNomeCartao')]/android.widget.FrameLayout/android.widget.EditText"
        @numeroCartao = "//*[contains(@resource-id,'editTextNumCartao')]/android.widget.FrameLayout/android.widget.EditText"
        @dataCartao = "//*[contains(@resource-id,'editTextValidade')]/android.widget.FrameLayout/android.widget.EditText"
        @cvv = "//*[contains(@resource-id,'editTextCodSegCartao')]/android.widget.FrameLayout/android.widget.EditText"
    end

    def cadastrar_cliente
        find_element(id: "com.example.grandson:id/btCadastro").click
        sleep 3
    end

    def cliente_fisico
        find_element(xpath: @nomeInput).send_keys("Lucas Francelino")
        find_element(xpath: @email).send_keys("lucas@gamil.com")
        find_element(xpath: @telefone).send_keys("61985934110")
        find_element(xpath: @senha1).send_keys("12345678")
        find_element(xpath: @senha2).send_keys("12345678")
        find_element(xpath: @btnAvancar).click
        find_element(xpath: @cep).send_keys("72231609")
        scroll_to("Complemento", scrollable_index = 0)
        find_element(xpath: @numeroCasa).click
        find_element(xpath: @numeroCasa).send_keys("883")
        find_element(xpath: @complemento).send_keys("Teste de software automatizado")
        find_element(xpath: @btnAvancar).click
        sleep 5
    end

    def cadastrar_dados_cliente
        find_element(xpath: @nomeInput).send_keys Faker::Games::Pokemon.name
        find_element(xpath: @email).send_keys Faker::Internet.email
        find_element(xpath: @telefone).send_keys Faker::Number.number(digits: 11)
        find_element(xpath: @senha1).send_keys("12345678")
        find_element(xpath: @senha2).send_keys("12345678")
        find_element(xpath: @btnAvancar).click
        find_element(xpath: @cep).send_keys("88355130")
        scroll_to("Complemento", scrollable_index = 0)
        find_element(xpath: @complemento).click
        find_element(xpath: @numeroCasa).send_keys("883")
        find_element(xpath: @complemento).send_keys Faker::Lorem.word
        find_element(xpath: @btnAvancar).click
        sleep 5
    end

    def cadastro_cartao
        find_element(xpath: @cpf).send_keys Faker::CPF.numeric
        find_element(xpath: @nomeCartao).send_keys Faker::Games::Pokemon.name
        find_element(xpath: @numeroCartao).send_keys("5197530436392847")
        find_element(xpath: @dataCartao).send_keys("062036")
        find_element(xpath: @cvv).send_keys("1234")
        find_element(id: "com.example.grandson:id/btCadastrar").click
        sleep 3
    end

    def cadastro_incorreto(nome, email, telefone, senha1, senha2, cep, numero, complemento)
        find_element(xpath: @nomeInput).send_keys(nome)
        find_element(xpath: @email).send_keys(email)
        find_element(xpath: @telefone).send_keys(telefone)
        find_element(xpath: @senha1).send_keys(senha1)
        find_element(xpath: @senha2).send_keys(senha2)
        find_element(xpath: @btnAvancar).click
        find_element(xpath: @cep).send_keys(cep)
        scroll_to("Complemento", scrollable_index = 0)
        find_element(xpath: @complemento).click
        find_element(xpath: @numeroCasa).send_keys(numero)
        find_element(xpath: @complemento).send_keys(complemento)
        find_element(xpath: @btnAvancar).click
        sleep 5
    end

    def avancar
        find_element(xpath: @btnAvancar).click
        sleep 5
    end
    

end