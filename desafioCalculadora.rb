while true
    puts "escolha um número..."
    num1 = gets.chomp.to_i

    puts "escolha um operador(+,-,/,*)..."
    operador = gets.chomp

    puts "escolha outro numero..."
    num2 = gets.chomp.to_i

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
    puts "o resuldado é: #{res}"
end