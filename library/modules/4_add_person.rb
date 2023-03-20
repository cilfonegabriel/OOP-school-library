module AddPerson
    def create_student
        print('Name: ')
        name = gets.chomp
        print('Age: ')
        age = gets.chomp
        print('Has parent permission [Y/N]: ')
        permission = gets.chomp
        permission = permission != ('n' || 'N')
        new_student = Student.new(age, nil, name, parent_permission: permission)
        @people.push(new_student)
        puts 'Student created successfully'
    end

    def create_teacher
        print('Name: ')
        name = gets.chomp
        print('Age: ')
        age = gets.chomp
        print('Specialization: ')
        spec = gets.chomp
        new_teacher = Teacher.new(age, spec, name)
        @people.push(new_teacher)
        puts 'Teacher created successfully'
      end
end
