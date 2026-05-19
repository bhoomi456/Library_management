class Book
  def initialize(title, author)
    @title = title
    @author = author
    @available = true
  end
  
  def available?
    if @available
      puts "Book Available"
    else
      puts "Book not Available"
    end
  end

  

end

# book1 = Book.new("Ruby basic", "David")
# book1.available?
