require_relative '../../src/imc.rb'

Dado("que meu peso é {string} kilos") do |peso|
    @peso = peso.to_i
  end
  
  Dado("minha altura é {string}") do |altura|
    @altura = altura.to_f
  end
  
  Quando("faço o cálculo") do
    imc = Imc.new
    @res_calculo = imc.calcula(@peso, @altura)
  end
  
  Então("vejo a mensagem {string}") do |res_esperado|
    expect(@res_calculo).to eql res_esperado
  end

