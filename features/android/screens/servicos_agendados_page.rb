class Agendamento


    def servicos_agendados
        find_element(id: "com.example.grandson:id/bt_servAgendado").click
        sleep 5
    end
    
    def detalhar_agendamento
        find_element(id: "com.example.grandson:id/NomeParceiro").click
        sleep 5
    end
    
    def cancelar_agendamento
        find_element(id: "com.example.grandson:id/bt_cancelar").click
        sleep 5
    end

end