class Library
  
  
  
  attr_accessor :books, :orders, :readers, :authors

  def initialize(books, orders, readers, authors)
      @@library = [@books = [], @orders = [], @readers = [], @authors = []]
  end      
  
  def add_book(book)
    @books << book && !book.nil?
  end

  def add_order(order)
    @orders << order && !order.nil?
  end

  def add_reader(reader)
    @readers << reader && !reader.nil?
  end

  def add_author(author)
    @authors << author && !author.nil?
  end




end