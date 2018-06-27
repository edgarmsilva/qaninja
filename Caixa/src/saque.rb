class Conta
    attr_accessor :saldo

<<<<<<< HEAD
    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > @saldo
            return "Saldo insuficiente para saque."
           
        else
            @saldo -= valor
=======
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
>>>>>>> cd7b85c632730a8511e7be676a141ce0bfc8facb
            return "Saque com sucesso. Muito Obrigado!"

        end
        
    end
end
