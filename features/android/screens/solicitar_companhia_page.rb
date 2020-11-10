class SolicitarCompanhia

    def initialize
        #DADOS DE AGENDAMENTO
        @data_novembro30 = "//android.view.View[@content-desc='30 novembro 2020']"
        @hora = "//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc='16']"
        @minuto = "//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc='50']"
    end

    def solicitar_parceiro
        find_element(id: "com.example.grandson:id/NomeParceiro").click
        find_element(id: "com.example.grandson:id/bt_agendar").click
        find_element(id: "com.example.grandson:id/textInputData").click
        find_element(xpath: @data_novembro30).click
        find_element(id: "android:id/button1").click
        find_element(id: "com.example.grandson:id/textInputTime").click
        find_element(xpath: @hora).click
        find_element(xpath: @minuto).click
        find_element(id: "android:id/button1").click
        scroll_to_exact("Solicitar", scrollable_index = 0)
        find_element(id: "com.example.grandson:id/btSolicitar").click
        sleep 5
    end
    
end