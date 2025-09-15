#1 soma
def soma(num1 , num2)
     num1 + num2
end

puts soma(2, 4)


#2 primo
def primo(num1)
    (2...num1).each do |i|
       if num1 % i == 0
        puts "não é primo"
        return
       end
    end
    puts "primo"
end

primo(7)
primo(9)

3# fatorial
def fat(num1)
    resultado = 1
    (1..num1).each do |i|
        resultado *= i
    end
    puts resultado
end
fat(4)