
class App
    def initialize
        @calc = Calculadora.new
    end
    
    def dados
        
        loop do
            if @res == 0
                puts "escolha um número"
                entrada1 = gets.chomp             
                num1 = ValidacaoNum.validacaoNumero(entrada1)
                next if num1.nil?                 
            else
                puts "resultado anterior #{@res}"
                num1 = @res
            end
          
            puts "escolha um operador"
            operador = gets.chomp
            
            operador = ValidacaoOpe.validacaoOperador(operador, @operadores)
            next if operador.nil?


            puts "escolha outro número"
            entrada2 = gets.chomp
            num2 = ValidacaoNum.validacaoNumero(entrada2)
            next if num2.nil?

            @res = calc(num1,num2,operador)
        end
    end
end