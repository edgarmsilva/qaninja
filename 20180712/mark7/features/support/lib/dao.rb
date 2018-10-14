require 'mongo'

class DAO
    attr_accessor :client
    
    Mongo::Logger.logger = Logger.new('log/mongo.log') 

    def initialize
        str_conn = 'mongodb://aluno:qaninja@ds225078.mlab.com:25078/heroku_4m3km28x'
        @client = Mongo::Client.new(str_conn)
    end
    def remover_tarefas(nome)
        tasks = @client[:tasks]
        tasks.delete_many('title' => nome)
    end
end