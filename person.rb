class Person
    def initialize(age, name = "Unknown", parent_permisson : true)
        @id = id
        @age = age
        @name = name
        @parent_permisson = parent_permisson
    end

    #Getters
    attr_reader : id
    attr_accessor : name, :age
    attr_reader : parent_permisson

    #Setters
    def can_use_services?
        of_age? || parent_permisson
    end

    private
    def of_age?
        @age >= 18
    end

end