class ValidacaoOpe
  def self.validacaoOperador(operador, operadores)
    if operadores.include?(operador)
      operador
    else
      puts "operador inválido"
      nil
    end
  end
end
