
array = [1, 2, 3, 4]

#select para selecionar itens de um array que atendam a uma condição(nesse caso so os que são acima de um determinado valor)

selection = array.select do |a|
  a >= 4
end

puts selection