class Select
    def self.select_word
        words = []
        File.open(File.expand_path('../../words.txt',__FILE__), 'r') do |arq|
            while line = arq.gets
            chosen = line.chomp
            words.push(chosen)
            end
        end

        selected = words.sample
        forca = selected.split('')
        puts "Dica! A palavra tem #{forca.length} letras!"
        
        forca
    end
end