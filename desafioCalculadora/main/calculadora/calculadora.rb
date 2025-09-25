require_relative '../operacoes/add'
require_relative '../operacoes/sub'
require_relative '../operacoes/mul'
require_relative '../operacoes/div'


class DesafioCalculadora

    def initialize
      @operadores = ["+","-","*","/"]
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

    def validacaoOperador(operador)
        if @operadores.include?(operador)
            operador
        else
            puts "operador inválido"
            nil
        end
    end

    def validacaoNumero(valor)
        if valor.strip.empty?
            puts "número vazio"
            return nil
        end

        num = valor.to_f
        if num < 0
            puts "número negativo"
            return nil
        end

        num
    end

    def dados
        
        loop do
            if @res == 0
                puts "escolha um número"
                entrada1 = gets.chomp             
                num1 = validacaoNumero(entrada1)
                next if num1.nil?                 
            else
                puts "resultado anterior #{@res}"
                num1 = @res
            end
          
            puts "escolha um operador"
            operador = gets.chomp

            operador = validacaoOperador(operador)
            next if operador.nil?

            puts "escolha outro número"
            entrada2 = gets.chomp
            num2 = validacaoNumero(entrada2)
            next if num2.nil?

            @res = calculadora(num1,num2,operador)
        end
    end

    def resultado
        puts "o resultado é #{@res}"
    end
end
    
DesafioCalculadora.new.dados

