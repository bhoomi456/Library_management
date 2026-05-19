require 'minitest/autorun'
require_relative "../library"

class TestLibrary < Minitest::Test
  def setup
    library = Library.new("City Library")
  end
end
