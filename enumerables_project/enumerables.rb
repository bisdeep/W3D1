class Array
    def my_each(&block)
        self.map! {|ele| block.call(ele) }
    end

    def my_select(&block)
        newArr = []
        newArr << block.call(self.my_each(&block))
        return newArr
    end

    def my_reject(&block)
        newArr =[]
        self.each do |ele| 
            if !block.call(ele)
                newArr << ele 
            end 
        end
        newArr
    end 

end

# a = Array.new([1, 2, 3])
# a = [1, 2, 3]
# p a.my_reject() {|num| num > 1}




# array1 = [1,2,3,4,5,6]
# p array1.object_id
# p array1.my_select() {|ele| ele.even?}
# p array1.my_each() {|ele| ele.odd?}
# p array1.object_id

