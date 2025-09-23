
class Calculadora
    def soma(num1, num2)
        res = num1 + num2
        puts "o resultado é #{res}"
        return res
    end
    def subtracao(num1, num2)
        res = num1 - num2
        puts "o resultado é #{res}"
        return res
    end
    def divisao(num1, num2)
        res = num1 / num2
        puts "o resultado é #{res}"
        return res
    end
    def multiplicacao(num1, num2)
        res = num1 * num2
        puts "o resultado é #{res}"
        return res
    end   
end

calc = Calculadora.new

res = 0

while true
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

    case operador
        when  "+"
            res = calc.soma(num1, num2)
        when "-"
            res = calc.subtracao(num1, num2)
        when "/"
            res = calc.divisao(num1, num2)
        when "*"
            res = calc.multiplicacao(num1, num2)
        else
            puts "operação inválida"
            exit
    end
end