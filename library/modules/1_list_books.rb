module ListBooks
    def list_books
      puts '  No books found. Add one to the library' unless @books.length.positive?
      @books.each { |book| puts(" | Title: #{book.title} Author: #{book.author} |") }
    end
end