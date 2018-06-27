class Saque
    attr_accessor :saldo_inicial, :saque_valor 

    # def initialize (saldo_inicial,saque_valor)
    #     @saldo_inicial = saldo_inicial.to_f
    #     @saque_valor = saque_valor.to_f
        
    # end

    def efetua_saque(saldo_inicial,saque_valor)
        if (saldo_inicial > saque_valor)
            res = saldo_inicial - saque_valor
            return res
            
        else
            return saldo_inicial
        end
    end

    def mostra_msg(saldo_inicial,saque_valor)
        if saldo_inicial > saque_valor
            return "Saque com sucesso. Muito Obrigado!"
        else
            
            return "Saldo insuficiente para saque."
        end
    end
    
end






