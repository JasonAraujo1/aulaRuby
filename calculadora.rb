
while true
    print 'Escolha um número: '
    num1 = gets.chomp.to_i

    print 'Escolha outro número: '
    num2 = gets.chomp.to_i

    print 'escolha uma operação (+, -, *, /): '

    operacao = gets.chomp

    case operacao
        when '+'
            res = num1 + num2
        when '-'
            res = num1 - num2   
        when '*'
            res = num1 * num2
        when '/'
            res = num1 / num2
        else
            puts 'Operação inválida'
            exit
    end


    puts "o resultado é: #{res}"
end