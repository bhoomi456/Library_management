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

  def display_books
    puts "Library Name: #{library_name}"
    if @books.empty?
      puts "No Books Available"
    else
      @books.each do |book|
        status = book.available? ? "Available" : "Borrowed"  #ternary operator

        puts "Title : #{book.title}"
        puts "Author : #{book.author}"
        puts "Status : #{status}"

        puts "----------------------"
      end
    end
  end
end