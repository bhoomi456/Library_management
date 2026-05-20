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
    if @borrowed.include?(book)
      @borrowed.delete(book)

      book.return

      puts "#{book.title} Returned By #{name}"
    else
      puts "This member did not borrow this code"
    end
  end
end