class Esportista
    def competir
        puts "participando de uma competição"
    end
end

class JogFutebol < Esportista
    def correr
        puts "correndo atras da bola"
    end
end

class Maratonista < Esportista
    def correr 
        puts "percorrendo circuito"
    end
end

maratonista = Maratonista.new
jogFutebol = JogFutebol.new
esportista = Esportista.new

maratonista.competir
maratonista.correr

jogFutebol.competir
jogFutebol.correr

esportista.competir

