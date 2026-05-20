require_relative "book"
require_relative "library"

class Member
  attr_reader :name
  def initialize(name)
    @name = name
    @borrowed = []
  end

  def borrowed_book(book)
    if book.available?
      @borrowed << book

      book.borrow
      
      puts "#{book.title} Borrowed By #{name}"
    else
      puts "Book Not Available"
    end
  end

  def returend_book(book)
    @borrowed.delete(book)
    puts "#{book.title} Returned By #{name}"
  end
end