
class Calculadora

    def initialize
       @res = 0.0
       @operadores = ["+","-","*","/"]
    end

    def calculo(num1, num2, operador)
        case operador
        when "+"
            @res = num1 + num2

        when "-"
            @res = num1 - num2

        when "/"
            @res = num1 / num2

        when "*"
            @res = num1 * num2
        else
            puts "operação inválida"
            exit
        end

        resultado
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

            @res = calculo(num1,num2,operador)
        end
    end

    def resultado
        puts "o resultado é #{@res}"
    end
end
    
Calculadora.new.dados



