class ValidacaoNum
    def self.validacaoNumero(valor)
        if valor.strip.empty?
            puts "número vazio"
            return nil
        end

        num = valor.to_f
        if num < 0
            puts "número negativo"
            return nil
        end

        num
    end
end