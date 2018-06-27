class Conta_Saldo

  def saldo_fim (saldo_inicio,saque)
<<<<<<< HEAD
    
      saldo_fim = (saldo_inicio - saque)
      if saldo_fim >= saque #não entendi a lógica
        return 'Saque com sucesso. Muito obrigado!'
      else 
        return saldo_inicio  
        
        # teste
      end   
      
    end
=======
    if saldo_inicio >= saque
        saldo_fim = (saldo_inicio - saque)
        return saldo_fim.to_s
    else
      return saldo_inicio
    end    
  end

  def mostra_msg (saldo_inicio, saque)
  if saldo_inicio >= saque
    return "Saque com sucesso. Muito obrigado!"
  else 
    return "Saldo insuficiente para saque." 
  end 
   
  
  end

>>>>>>> cd7b85c632730a8511e7be676a141ce0bfc8facb
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
<<<<<<< HEAD
# edgar
puts resultado
# ------------
end

Então("devo ver a seguinte mensagem {string}") do |resultado_final|
  # expect(resultado).to eql @resultado_final
  puts @resultado
  puts resultado_final
=======
  expect(resultado.to_s).to eql saldo

end

Então("devo ver a seguinte mensagem {string}") do |resultado_final|
  conta_msg = Conta_Saldo.new
  res = conta_msg.mostra_msg(@saldo_inicio,@saque)
  expect(res).to eql resultado_final

>>>>>>> cd7b85c632730a8511e7be676a141ce0bfc8facb
end
