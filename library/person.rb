class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  # Getters
  attr_reader :id
  attr_accessor :name, :age
  attr_reader :parent_permission

  # Setters
  def can_use_services?
    of_age? || parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
