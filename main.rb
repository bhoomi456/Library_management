require_relative "book"

book1 = Book.new("Ruby Basic", "David")
book1.available?
book1.borrow
book1.available?
