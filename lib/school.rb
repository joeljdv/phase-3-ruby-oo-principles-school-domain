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
        sorted_hash = {}
        @roster.each{|k, v| sorted_hash[k] = v.sort}
        sorted_hash
    end
end

# school = School.new("Bayside HS")

# school.add_student("Joel", 10)
# school.add_student("Les", 10)
# school.add_student("Bob", 5)
# school.add_student("pao", 5)
# school.add_student("Juan", 10)

# puts school.sort
