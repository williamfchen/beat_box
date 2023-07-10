class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
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
        
        return list_string
    end

    def prepend(data)
        new_head = Node.new(data)
        new_head.next_node = head

        @head = new_head
    end

    def insert(position, data)
        insert_node = Node.new(data)
        current_node = head

        if position == 0
            insert_node.next_node = head
            @head = insert_node
        else
            (position - 1).times do
                current_node = current_node.next_node
            end

            insert_node.next_node = current_node.next_node
            current_node.next_node = insert_node
        end
    end

    def find(position, quantity)
        current_node = head
        find_string = ""
        
        position.times do
            current_node = current_node.next_node
        end

        find_string << current_node.data

            if quantity > 1
                (quantity - 1).times do
                    find_string << " "
                    current_node = current_node.next_node
                    find_string << current_node.data
                end
            end

        return find_string

    end

    def includes?(data)
        current_node = head
       
        while current_node != nil
            if current_node.data == data
                return true
            else
                current_node = current_node.next_node
            end
        end

        return false
    end

    def pop
        return nil if @head.nil?

        if count == 1
            removed_data = head.data
            @head = nil
            return removed_data
        end

        current_node = head
        previous_node = nil

        until current_node.next_node == nil
            previous_node = current_node
            current_node = current_node.next_node
        end

        removed_data = current_node.data
        previous_node.next_node = nil
        return removed_data
    end


    
end

