require_relative '../../src/Conta.rb'

Dado("que eu tenho uma conta com {int} reais") do |saldo_inicial|
    @conta = Conta.new(saldo_inicial)
  end
  
  Quando("faço um saque no valor de {int} reais") do |saque_valor|
    @resultado = @conta.saca(saque_valor)
    puts @resultado
    
  end
  
  Então("{int} reais será meu saldo final") do |saldo_fim|
    expect(@conta.saldo).to eql saldo_fim

  end
  
  Então("devo ver a seguinte mensagem: {string}") do |mensagem|
    expect(@resultado).to eql mensagem

  end