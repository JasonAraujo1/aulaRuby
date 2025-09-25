require_relative '../operacoes/add'
require_relative '../operacoes/sub'
require_relative '../operacoes/mul'
require_relative '../operacoes/div'


class DesafioCalculadora

    def initialize
       @res = 0.0
       @add = Add.new
       @div = Div.new
       @mul = Mul.new
       @sub = Sub.new
    end

    def calculadora(num1, num2, operador)
        case operador
        when "+"
            @res = @add.adicao(num1, num2)

        when "-"
            @res = @sub.subtracao(num1, num2)

        when "/"
            @res = @div.divisao(num1, num2)

        when "*"
            @res = @mul.multiplicacao(num1, num2)
        else
            puts "operação inválida"
            exit
        end

        puts "o resultado é #{@res}"
        return @res
    end

    def dados
        loop do
            if @res == 0 
                puts "escolha um número"
                num1 = gets.chomp.to_f
            else
                puts "resultado anterior #{@res}"
                num1 = @res
            end

            puts "escolha um operador"
            operador = gets.chomp

            puts "escolha outro número"
            num2 = gets.chomp.to_f

            @res = calculadora(num1,num2,operador)
        end

    end

end
    
DesafioCalculadora.new.dados



