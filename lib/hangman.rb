require_relative 'alerts'
require_relative 'select'

class Hangman
    attr_accessor :forca, :tentativas, :erradas, :certas

    NUMERO_TENTATIVAS = 15

    def initialize
        @tentativas = 0
        @erradas = []
        @certas = []
    end
    
    def start
        Alerts.game_start
        @forca = Select.select_word

        until @tentativas == NUMERO_TENTATIVAS
            puts "Você tem #{NUMERO_TENTATIVAS - @tentativas} tentativas!"
            puts "\n Digite uma letra "
            letra = gets.chomp()
    
            if @certas.include?(letra) || @erradas.include?(letra)
                puts "Você ja digitou essa letra. Tente outra!\n\n"
            else
                @tentativas += 1
                if @forca.include?("#{letra}")
                    @certas.push(letra)
                    print "Você acertou! A palavra tem a letra #{letra} \n\n"
                else
                    @erradas.push(letra)
                    print "Ah, que pena! Não tem a letra #{letra}  \n\n"
                end
            end

            print_forca(forca, certas)
            
        end
    end
    
    def print_forca(forca, certas)
        forca.each do |letra_forca|
            if certas.include?("#{letra_forca}")
                print letra_forca
            else 
                print "_ "
            end
        end

        print "\n\n"
    end
end
