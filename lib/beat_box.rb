class BeatBox
    attr_accessor :list
    attr_reader :approved_sounds

    def initialize(list)
        @list = LinkedList.new
        # list = append(list) creates app sound nil
        @approved_sounds = ["tee", "dee", "deep", "dop", "bop", "boop", "la", "na"]
        append(list)
        # require 'pry';binding.pry
    end

    def append(data_string)
        data_string.split(" ").each do |data|
            if @approved_sounds.include?(data)
                @list.append(data)
                require 'pry';binding.pry

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
        `say -r 500 -v Boing #{beats}`
    end



end
