palavras = ["casa", "cozinha","padaria", "piscina", "paralelo"]
selecionada = palavras.sample
forca = selecionada.split('')

puts "#{forca}"
puts "Jogo Forca!"
puts "------------"
puts "Dica! A palavra tem #{forca.length} letras!"

tentativas = 0
erradas = []
certas = []

until tentativas == 20
    puts "Você tem #{20 - tentativas} tentativas!"
    puts "Digite uma letra "
    letra = gets.chomp

    tentativas += 1

    if forca.include?("#{letra}") == true
        certas.push(letra)
        print "Você acertou! A palavra tem a letra #{letra} \n\n"
    else
        erradas.push(letra)
        print "Ah, que pena! Não tem a letra #{letra}  \n\n"
    end

    forca.each do |letra_forca|
        if certas.include?("#{letra_forca}")
            print letra_forca
        else 
            print "__"
        end
    end
end

# Avisar quando vencer
# Não permitir digitar 2x a mesma letra
# arrumar os espaçamentos


#letras_digitadas = []
#letras_digitadas.push