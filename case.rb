puts 'digite o numero do mes que voce nasceu:'

mes = gets.chomp.to_i

case mes
    when 1..3
        puts 'voce nasceu no inicio do ano'
    when 4..6
        puts 'voce nasceu na primavera'
    when 7..9
        puts 'voce nasceu no inverno'
    when 10..12
        puts 'voce nasceu no outono'
    else
        puts 'mes invalido'
end