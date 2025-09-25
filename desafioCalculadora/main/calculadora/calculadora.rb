

class Calculadora

    def initialize
      @operadores = ["+","-","*","/"]
       @res = 0.0
       @add = Add.new
       @div = Div.new
       @mul = Mul.new
       @sub = Sub.new
    end

    def calc(num1, num2, operador)
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
 

    def resultado
        puts "o resultado é #{@res}"
    end
end
    

