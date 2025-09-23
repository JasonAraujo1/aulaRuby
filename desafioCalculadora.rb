
res = 0
while true
    if res == 0
        puts "escolha um número..."
        num1 = gets.chomp.to_f
    else
        num1 = res
        puts "resultado anterior: #{num1}"
    end

    puts "escolha um operador(+,-,/,*)..."
    operador = gets.chomp

    puts "escolha outro numero..."
    num2 = gets.chomp.to_f

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