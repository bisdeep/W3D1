class Array
    def my_each(&block)
        self.map! {|ele| block.call(ele) }
    end

    def my_select(&block)
        newArr = []
        newArr << block.call(self.my_each(&block))
        return newArr
    end

end

# array1 = [1,2,3,4,5,6]
# p array1.object_id
# p array1.my_select() {|ele| ele.even?}
# p array1.my_each() {|ele| ele.odd?}
# p array1.object_id

