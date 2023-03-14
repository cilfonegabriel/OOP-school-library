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