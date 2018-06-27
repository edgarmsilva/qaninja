class Conta
    attr_accessor :saldo

    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if saldo > 700
            return "nãõ pode"
        elsif valor > @saldo
            return "Saldo insuficiente para saque."
        else
            @saldo -= valor
            return "Saque com sucesso. Muito Obrigado!"
        end
    end
end
