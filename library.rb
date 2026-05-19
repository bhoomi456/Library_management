require_relative "book"

class Library
  attr_reader :library_name
  def initialize(library_name)
    @library_name = library_name
    @books = []
  end

  def add_book(book)
    @books << book
    puts "#{book.title} Added successfully"
  end
end