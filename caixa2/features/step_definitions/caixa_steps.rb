require_relative '../../src/caixa.rb'

Dado("que eu sou um correntista") do 
    operacao = Caixa.new
    @res_operacao = operacao.saque(@saldo, @saque)
  end
  
  Dado("meu saldo é de R$ {string}") do |saldo|
    @saldo = saldo.to_f
  end
  
  Quando("eu solicito um saque no valor de R$ {string}") do |saque|
    @saque = saque.to_f
  end
  
  Então("devo ver a mensagem {string}") do |res|
    
  end
  
  Então("meu saldo final será de R$ {string}") do |saldo_final|
    pending # Write code here that turns the phrase above into concrete actions
  end