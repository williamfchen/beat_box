class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head.nil?
            @head = Node.new(data)
        else
            current_node = head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end

            current_node.next_node = Node.new(data)
        end
    end

    def count
        current_node = head
        current_count = 0
        
        while !current_node.nil?
            current_count += 1
            current_node = current_node.next_node
        end

        return current_count
    end

    def to_string
        current_node = head
        list_string = ""

        # if count >1 and current_node.next_node.nil?
        #     while !current_node.nil?
        #         list_string << current_node.data
        #         current_node = current_node.next_node
        #     end
        #     return list_string    
        # elsif count > 1 and current_node.next_node != nil
        #     while !current_node.nil?
        #         list_string << current_node.data + " "
        #         current_node = current_node.next_node
        #     end
        #     return list_string
       
        # else
        #     head.data
        # end
    end


    
end
