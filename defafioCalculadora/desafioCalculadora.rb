
class DesafioCalculadora

    def self.init
       @res = 0.0
    end

    def self.calculadora(num1, num2, operador)
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

        self.resultado
        return @res
    end

    def self.validacaoOperador(operador)
        if ["+","-","*","/"].include?(operador)
            operador
        else
            puts "operador inválido"
            nil
        end
    end

    def self.validacaoNumero(valor)
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

    def self.dados
        self.init
        loop do
            if @res == 0
                puts "escolha um número"
                entrada1 = gets.chomp             
                num1 = self.validacaoNumero(entrada1)
                next if num1.nil?                 
            else
                puts "resultado anterior #{@res}"
                num1 = @res
            end
          
            puts "escolha um operador"
            operador = gets.chomp

            operador = self.validacaoOperador(operador)
            next if operador.nil?

            puts "escolha outro número"
            entrada2 = gets.chomp
            num2 = self.validacaoNumero(entrada2)
            next if num2.nil?

            @res = self.calculadora(num1,num2,operador)
        end
    end

    def self.resultado
        puts "o resultado é #{@res}"
    end
end
    
DesafioCalculadora.dados



