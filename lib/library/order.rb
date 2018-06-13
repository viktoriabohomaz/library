require_relative 'book'
require_relative 'reader'

class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = Time.new)
    @book = book
    @reader = reader
    @date = date
  end

  def inspect
    "#{book.title} => #{reader.name}"
  end
end
