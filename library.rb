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

  def find_book(title)
    found = @books.find {|book| book.title == title}
    if found
      found
    else
      puts "Not found"
    end
  end

  def borrow_book(title)
    book_action(title, :borrow, "Book Not Abailable To Borrowing")
  end

  def return_book(title)
    book_action(title, :return, "Book Not Exist")
  end

  private

  def book_action(title, action, error_message)
    book = find_book(title)

    if book
      book.send(action)
    else
      puts error_message
    end
  end
end

  
