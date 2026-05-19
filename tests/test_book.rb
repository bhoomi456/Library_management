require "minitest/autorun"
require_relative "../book"

class TestBook < Minitest::Test 
  def setup
    @book1 = Book.new("Ruby Basic", "David")
  end
  
  def test_book_title
    assert_equal "Ruby Basic", @book1.title
  end
end