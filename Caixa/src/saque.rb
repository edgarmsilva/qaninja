class Saque
    attr_accessor :saldo_inicial, :saque_valor 

    def initialize (saldo_inicial,saque_valor)
        @saldo_inicial = saldo_inicial.to_f
        @saque_valor = saque_valor.to_f
        
    end

    def efetua_saque
        if @saldo_inicial > @saque_valor
            return saldo_inicial - saque_valor
            
        else
            return "deu ruim"
        end
    end

    def mostra_msg
        if saldo_inicial > saque_valor
            return "Saque com sucesso. Muito Obrigado!"
        else
            
            return "Saldo insuficiente para saque."
        end
    end
    
end






