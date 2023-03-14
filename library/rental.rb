class Rental
    attr_accessor :date, :book

    def initialize(date,book)
        @date = date
        @book = book
    end

    def rent(book, person)
        @book = book
        @person = person
        book.rentals.push(self) unless book.rentals.include?(self)
        person.rental.push(self) unless person.rentals.include?(self)
    end
end
