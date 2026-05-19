require "minitest/autorun"
require_relative "../book"

class TestBook < Minitest::Test 
  def setup
    @book1 = Book.new("Ruby Basic", "David")
  end
  
  def test_book_title
    assert_equal "Ruby Basic", @book1.title
  end

  def test_book_author
    assert_equal "David", @book1.author
  end

  def test_book_available
    output = capture_io do
      @book1.available?
    end
    assert_equal "Book Available\n", output[0]
  end
end