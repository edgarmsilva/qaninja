require_relative '../../src/saque.rb'

Dado("que eu tenho uma conta com {string} reais") do |inicial|
    @inicial = inicial
  end
  
  Quando("faço um saque no valor de {string} reais") do |saque_valor|
    @saque = saque_valor
    
  end
  
  Então("{string} reais será meu saldo final") do |saldo_fim|
    teste = Saque.new(@inicial,@saque_valor)
    @saldo_final = teste.efetua_saque
    # expect(saldo_final).to eql @resultado_saque.round(2)

    # puts saldo_fim
    puts @saldo_final
  end
  
  Então("devo ver a seguinte mensagem: {string}") do |mensagem|
    teste2 = Saque.new(@saldo_inicial,@saque_valor)
    @msg = teste2.mostra_msg
    # expect(mensagem).to eql @msg
    puts mensagem
    puts @msg
  end