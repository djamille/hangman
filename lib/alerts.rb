class Alerts
    def self.game_start
        puts "HANGMAN GAME!"
        puts "------------"
    end

    def self.tentativas(tentativas)
        puts "\n Você tem #{tentativas} tentativas! \n\n"
    end

    def self.letra_ja_usada
        puts "Você ja digitou essa letra. Tente outra!"
    end
end