class Conta_Saldo

  def saldo_fim (saldo_inicio,saque)
    
      saldo_fim = (saldo_inicio - saque)
      if saldo_fim >= saque #não entendi a lógica
        return 'Saque com sucesso. Muito obrigado!'
      else 
        return saldo_inicio  
        
        # teste
      end   
      
    end
end  

Dado("que eu tenho uma conta com {string} reais") do |saldo_inicio|
  @saldo_inicio = saldo_inicio.to_i
end

Quando("faço um saque no valor de {string} reais") do |saque|
  @saque = saque.to_i

end

Então("{string} reais será o meu saldo final") do |saldo|
  conta_saldo = Conta_Saldo.new
  resultado = conta_saldo.saldo_fim(@saldo_inicio, @saque)
# edgar
puts resultado
# ------------
end

Então("devo ver a seguinte mensagem {string}") do |resultado_final|
  # expect(resultado).to eql @resultado_final
  puts @resultado
  puts resultado_final
end
