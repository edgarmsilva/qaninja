

class Adicionar < SitePrism::Section

    element :campo_nome, 'input[name=title]'
    element :campo_data, 'input[name=dueDate]'
    element :botao_cadastrar, 'button[id*=submit]'
    element :alerta, '.alert-warn'
    element :campo_tags, '.bootstrap-tagsinput input'

    def add_tags(tags)
            tags.each do |t|
            campo_tags.set t[:tag]
            campo_tags.send_keys :tab
        end 
    end 

    def cadastrar(tarefa, tags)
        campo_nome.set tarefa[:nome]
        campo_data.set tarefa[:data]
        add_tags(tags)
       
        
        botao_cadastrar.click
        
     
    end
end

class TarefasPage < SitePrism::Page
    element :painel, '#task-board'
    element :botao_novo, '#insert-button'
    elements :itens, 'table tbody tr' 
    element :campo_busca, 'input[name=search]'
    element :botao_busca, '#search-button'
    
  


def busca(valor)
    campo_busca.set valor
    botao_busca.click
end


def item(valor)
    find('table tbody tr', text: valor)
    
end

    section :adicionar, Adicionar, '#add-task-view'

end