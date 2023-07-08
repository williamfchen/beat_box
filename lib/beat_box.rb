class BeatBox
    attr_accessor :list

    def initialize
        @list = LinkedList.new
    end

    def append(data_string)
        data_string.split(" ").each do |data|
            @list.append(data)
        end
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
