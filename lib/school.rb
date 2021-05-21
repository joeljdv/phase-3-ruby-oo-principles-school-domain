# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        
        end

    end

    def grade(num)
        @roster[num]
    end

    def sort
        # sorted_hash = {}
        # @roster.each{|k, v| sorted_hash[k] = v.sort}
        # sorted_hash
        @roster.keys.each_with_object({}){|k, sorted_hash| sorted_hash[k] = @roster[k].sort}
    end
end

