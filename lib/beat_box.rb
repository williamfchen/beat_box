class BeatBox
    attr_accessor :list, :rate, :voice
    attr_reader :approved_sounds 

    def initialize(list, rate = 500, voice = "Boing")
        @list = LinkedList.new
        # list = append(list) creates approverd sound nil
        @approved_sounds = ["tee", "dee", "deep", "dop", "bop", "boop", "la", "na", "plop", "hi", "ho", "hee", "hum"]
        @rate = rate
        @voice = voice
        append(list)

        # require 'pry';binding.pry
    end

    def append(data_string)
        data_string.split(" ").each do |data|
            if @approved_sounds.include?(data)
                @list.append(data)
                # require 'pry';binding.pry

            end
        end
    end

    def prepend(data_string)
        data_string.split(" ").reverse_each do |data|
            if approved_sounds.include?(data)
                @list.prepend(data)
            end
        end
    end

    def all
        @list.to_string
    end

    def count
        @list.count
    end

    def play
        beats = list.to_string
        # require 'pry';binding.pry
        system(`say -r #{rate} -v #{voice} #{beats}`)
    end

    def reset_rate
        rate = 500
    end

    def reset_voice
        voice = "Boing"
    end


end
