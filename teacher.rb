requiere_relative 'person'
class Teacher < Person
    def initialize(age, specialization, name = 'Unknown', parent_permission : true)
        super(age, specialization, name, parent_permission : parent_permission)
        @specialization = specialization
    end
    def can_use_services?
        true
    end
end