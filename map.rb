array = [1, 2, 3, 4]

puts "\n Executando .map multiplicando cada item por 2"

new_array = array.map do |a|
  a * 2
end

puts " Array original: #{array}"
puts " Novo array: #{new_array}"

#se quiser mudar o array orginal pode usar o map! (com ponto de exclamação)