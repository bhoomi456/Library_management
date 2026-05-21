class Member
  attr_reader :name, :borrowed
  def initialize(name)
    @name = name
    @borrowed = []
  end

  def limit_reached?
    borrowed.length >= Library::MAX_BORROW_LIMIT
  end

  def add_borrowed_book(book)
    @borrowed << book
  end

  def returned_borrow_book(book)
    @borrowed.delete(book)
  end
end