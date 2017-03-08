module MyEnumerable
    def my_each
        for x in self
            yield x
        end
    end
end

class Array
    include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i }
[1,2,3,10].my_each { |i| puts i*10 }