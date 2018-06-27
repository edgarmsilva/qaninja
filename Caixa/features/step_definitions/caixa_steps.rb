require_relative '../../src/saque.rb'

<<<<<<< HEAD
Dado("que eu tenho uma conta com {int} reais") do |saldo_inicial|
    @conta = Conta.new(saldo_inicial)
  end
  
  Quando("faço um saque no valor de {int} reais") do |saque_valor|
    @resultado = @conta.saca(saque_valor)
    
  end
  
  Então("{int} reais será meu saldo final") do |saldo_fim|
    expect(@conta.saldo).to eql saldo_fim
    puts @conta.saldo
=======
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
>>>>>>> cd7b85c632730a8511e7be676a141ce0bfc8facb

  end
  
  Então("devo ver a seguinte mensagem: {string}") do |mensagem|
<<<<<<< HEAD
    expect(@resultado).to eql mensagem
=======
    teste2 = Saque.new
    @msg = teste2.mostra_msg(@saldo_inicial,@saque_valor)
    expect(@msg).to eql mensagem
>>>>>>> cd7b85c632730a8511e7be676a141ce0bfc8facb

  end