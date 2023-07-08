class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
            # when do I need @
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
        
        while current_node != nil
            current_count += 1
            current_node = current_node.next_node
        end

        return current_count
    end

    def to_string
        current_node = head
        list_string = ""

        while current_node != nil
            list_string << current_node.data
            if current_node.next_node != nil
                list_string << " "
            end
            current_node = current_node.next_node
        end
        
        list_string
    end

    def prepend(data)
        new_head = Node.new(data)
        new_head.next_node = @head
        # require 'pry';binding.pry
        @head = new_head
    end

    def insert(position, data)
        insert_node = Node.new(data)
        current_node = head

        (position - 1).times do
            current_node = current_node.next_node
        end

        insert_node.next_node = current_node.next_node
        current_node.next_node = insert_node
    end


    
end

