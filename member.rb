class Member
  attr_reader :name, :borrowed
  def initialize(name)
    @name = name
    @borrowed = []
  end

  def limit_reached?
    borrowed.length >= Library::MAX_BORROW_LIMIT
  end

  def add_borrow_book(book)
    @borrowed << book
  end

  def remove_borrow_book(book)
    @borrowed.delete(book)
  end
end

#   def borrowed_book(book)
#     if @borrowed.length >= 2  #Allow one member to borrow only two books at a time.

#       puts "#{name} cannot borrow more than two books"
      
#     elsif book.available?

#       @borrowed << book
#       book.borrow

#       puts "#{book.title} Borrowed By #{name}"

#     else
#       puts "Book Not Available"
#     end
#   end

#   def returend_book(book)
#     if @borrowed.include?(book)  # check if member actually borrowed book
#       @borrowed.delete(book)

#       book.return

#       puts "#{book.title} Returned By #{name}"
#     else
#       puts "This member did not borrow this code"
#     end
#   end
# end