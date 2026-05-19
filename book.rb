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

  def borrow
    if @available
      @available = false
      puts "Book borrowed"
    else
      puts "Already borrowed"
    end
  end
end




