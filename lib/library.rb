require "yaml"
class Library
  
  
  
  attr_accessor :books, :orders, :readers, :authors

  def initialize(books, orders, readers, authors)
      @library = [@books = [], @orders = [], @readers = [], @authors = []]
  end      
  
  def load
    @library = YAML.load_file("../yaml/library.yml") || 
    File.new("../yaml/library.yml", "w+")
  end

  def save
    File.open("../yaml/library.yml", "r+") do |f|
      f.write(@library.to_yaml)
    end
  end
 
  def add_book(book)
    @books << book 
  end

  def add_order(order)
    @orders << order 
  end

  def add_reader(reader)
   @readers << reader 
  end

  def add_author(author)
    @authors << author 
  end




end