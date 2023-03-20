module CreateRental
  def create_rental
    puts 'Select a person from the list by number (not ID)'
    @people.each_with_index do |person, i|
      puts("  #{i}) [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}")
    end
    index = gets.chomp.to_i
    person = @people[index]
    puts 'Select a book from the list by number'
    @books.each_with_index { |book, i| puts(" #{i}) | Title: #{book.title} Author: #{book.author} |") }
    index = gets.chomp.to_i
    book = @books[index]
    time = Time.new
    rental = Rental.new(time.strftime('%m/%d/%y'), book, person)
    book.add_rental(rental)
    puts('Book has been rented successfully')
  end
end
