
class DesafioCalculadora
    
    def calculadora(num1, num2, operador)
        case operador
        when "+"
            res = num1 + num2

        when "-"
            res = num1 - num2

        when "/"
            res = num1 / num2

        when "*"
            res = num1 * num2
        else
            puts "operação inválida"
            exit
        end

        puts "o resultado é #{res}"
        return res
    end

    def dados
        res = 0

        loop do
            if res == 0 
                puts "escolha um número"
                num1 = gets.chomp.to_f
            else
                puts "resultado anterior #{res}"
                num1 = res
            end

            puts "escolha um operador"
            operador = gets.chomp

            puts "escolha outro número"
            num2 = gets.chomp.to_f

            res = calculadora(num1,num2,operador)
        end

    end

end
    
DesafioCalculadora.new.dados



