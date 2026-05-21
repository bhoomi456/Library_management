class Library
  MAX_BORROW_LIMIT = 2
  attr_reader :name
  def initialize(name)
    @name = name
    @books = []
    @members = []
  end

  def add_member(member)
    existing_member = find_member(member.name)
    if existing_member
      puts "Member Already Exist"
    else
      @members << member
      puts "#{member.name} Added Successfully "
    end
  end

  def find_member(name)
    @members.find { |member| member.name.strip.downcase == name.strip.downcase }
  end

  def add_book(book)
    existing_book = @books.find do |b|  #Prevent duplicate books with the same title.

      b.title.strip.downcase == book.title.strip.downcase
    end
    if existing_book
      puts "Book Already Exist"
    else
      @books << book
      puts "#{book.title} Added Successfully"
    end  
  end

  def display_books
    puts "Library Name: #{@name}"
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
    found = @books.find {|book| book.title.strip.downcase == title.strip.downcase}
    if found
      found
    end
  end

  def search_by_author(author)
    books = @books.select { |book| book.author.strip.downcase == author.strip.downcase }
    if books.empty?
      puts "No Books found"
    else
      books.each do |book|
        puts "#{book.title} By #{book.author}"
      end
    end
  end

  def available_books_count
    count = @books.count { |book| book.available? }    
    puts "Available books : #{count}"
  end

  def borrowed_books_count
    count = @books.count { |book| !book.available? }    

    puts "Borrowed books : #{count}"
  end

  def borrow_book(title, member)
    book = find_book(title)

    if book.nil?
      puts "Book not found"

    elsif !book.available?
      puts "Book Not Available"

    elsif member.limit_reached?
      puts " #{member.name} cannot borrow more that two books"
      
    else
      book.borrow
      member.add_borrowed_book(book)

      puts "#{book.title} borrowed by #{member.name}"
    end
  end

  def return_book(title, member)
    book = find_book(title)

    if book.nil?
      puts "Book Not Found"
    elsif member.borrowed.include?(book)  
      book.return

      member.returned_borrow_book(book)

      puts "#{book.title} Returned by #{member.name}"
    else
      puts "#{member.name} did not borrow this book"
    end
  end 
end