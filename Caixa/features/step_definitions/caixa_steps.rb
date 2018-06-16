require_relative '../../src/saque.rb'

Dado("que eu tenho uma conta com {string} reais") do |saldo_inicial|
    @saldo_inicial = saldo_inicial.to_i
  end
  
  Quando("faço um saque no valor de {string} reais") do |saque_valor|
    @saque_valor = saque_valor.to_i
    
  end
  
  Então("{string} reais será meu saldo final") do |saldo_fim|
    teste = Saque.new
    @saldo_final = teste.efetua_saque(@saldo_inicial,@saque_valor)
    expect(@saldo_final.to_s).to eql saldo_fim

    # puts saldo_fim
    # puts @saldo_final
  end
  
  Então("devo ver a seguinte mensagem: {string}") do |mensagem|
    teste2 = Saque.new
    @msg = teste2.mostra_msg(@saldo_inicial,@saque_valor)
    expect(@msg).to eql mensagem
    # puts mensagem
    # puts @msg
  end