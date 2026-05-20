require_relative "book"
require_relative "library"

class Member
  attr_reader :name
  def initialize(name)
    @name = name
    @borrowed = []
  end

  def borrow_book(book)
    @borrowed << book
    puts "#{book.title} Borrowed By #{name}"
  end
end