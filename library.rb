require_relative "book"

class Library
  attr_reader :library_name
  def initialize(library_name)
    @library_name = library_name
    @books = []
  end
end