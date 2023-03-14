require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :parent_permission, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  # Setters
  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
    rental.book.rentals.push(rental) unless rental.book.rentals.include?(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end
