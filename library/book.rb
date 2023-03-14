class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
    rental.person.rentals.push(rental) unless rental.person.rentals.include?(rental)
  end

  def view_rentals
    return 'No Rentals' unless @rentals.length.positive?

    rentals.each { |rent| puts("#{rent.date} | #{rent.person.name} | #{rent.book.title}") }
  end
end
