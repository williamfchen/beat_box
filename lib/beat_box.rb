class BeatBox
    attr_accessor :list, :rate, :voice
    attr_reader :approved_sounds 

    def initialize(data_string = nil, rate = 500, voice = "Boing")
        @list = LinkedList.new
        @rate = rate
        @voice = voice
        @approved_sounds = ["tee", "dee", "deep", "dop", "doo", "ditt", "bop", "boop", "la", "na", "plop", "hi", "ho", "hee", "hum", "woo", "hoo", "shu"]
        append(data_string) if data_string
    end

    def append(data_string)
        data_string.split.each do |data|
            if @approved_sounds.include?(data)
                @list.append(data)
            end
        end
    end

    def prepend(data_string)
        data_string.split.reverse_each do |data|
            if approved_sounds.include?(data)
                @list.prepend(data)
            end
        end
    end
    
    def count
        @list.count
    end

    def play
        beats = list.to_string
        system(`say -r #{rate} -v #{voice} #{beats}`)
    end
    
    def all
        @list.to_string
    end

    def reset_rate
        @rate = 500
    end

    def reset_voice
        @voice = "Boing"
    end
end
