require "minitest/autorun"
require_relative "../book"

class TestBook < Minitest::Test 
  def setup
    book1 = Book.new("Ruby Basic", "David")
  end
end