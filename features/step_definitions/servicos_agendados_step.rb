Quando('acesso servicos agendados') do
    @agendamento = Agendamento.new
    @agendamento.servicos_agendados
end

Entao('posso ver uma lista de parceiros agendadaos comigo') do
    elemento = find_element(id: "com.example.grandson:id/imgPerfParc")
    expect(elemento.displayed?).to be true
end

Quando('clico em um pareiro') do
  @agendamento.detalhar_agendamento
end

Entao('posso ver os detalhes do meu agendamento') do
    elemento = find_element(id: "com.example.grandson:id/nomeParceiro")
    expect(elemento.displayed?).to be true
end

Entao('posso cancelar meu agendamento') do
    @agendamento.cancelar_agendamento
end