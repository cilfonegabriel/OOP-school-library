module AddBook
  def create_book
    print('Title: ')
    title = gets.chomp
    print('Author: ')
    auth = gets.chomp
    new_book = Book.new(title, auth)
    @books.push(new_book)
    puts 'Book created successfully'
  end
end