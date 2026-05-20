class Book
  attr_reader :title, :author
  def initialize(title, author)
    @title = title
    @author = author
    @available = true
  end
  
  def available?
    @available
  end

  def borrow
    if available?
      @available = false
      puts "Book borrowed"
    else
      puts "Already borrowed"
    end
  end

  def return
    @available = true
    puts "Book returned"
  end
end




