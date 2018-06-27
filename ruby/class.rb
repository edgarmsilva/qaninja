class Cachorro
    attr_accessor :nome, :idade, :raca

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def mostraidade
        puts @nome.to_s + ' tem ' + @idade.to_s + ' anos'
    
    end


    def late
        puts @nome + ' diz: Au, Au..'
    end
end

spike = Cachorro.new('Spike',5)

puts '------------------------'
puts ''
spike.late
spike.mostraidade
puts '------------------------'


