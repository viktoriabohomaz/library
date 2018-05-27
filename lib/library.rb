require 'yaml'
require 'pry'

class Library
  attr_accessor :books, :orders, :readers, :authors

  def initialize
    @books = []
    @orders = []
    @readers = []
    @authors = []
  end

  def push(entity)
    if entity.is_a?(Book)
      add_book(entity)
    elsif entity.is_a?(Author)
      add_author(entity)
    elsif entity.is_a?(Order)
      add_order(entity)
    elsif entity.is_a?(Reader)
      add_reader(entity)
    else
      raise 'Invalid object'
    end
  end
  
  def load
    @library = YAML.load_file('../yaml/library.yml') ||
    File.new('../yaml/library.yml', 'w+')
  end

  def save
    File.open("../yaml/library.yml", "r+") do |f|
      f.write(@library.to_yaml)
    end
  end
   
  def most_popular_book
    hsh = @orders.group_by(&:book)
    best_book = hsh.max_by do |_key, value|
      value.count
    end.first.title

    # hash_books!
    # best_book = @hash.max_by {|key, value| value}.first
    puts "Most popular book: #{best_book}"
      
  end

  def the_first_three_popular_book
    hsh = @orders.group_by(&:book)
    orders_count = hsh.map do |value|
      value.last.count
    end.sort.reverse.uniq.first(3)

    books = hsh.select do |_book, orders|
      orders_count.include?(orders.count)
    end

    result_sum = @orders.group_by(&:reader).inject(0) do |sum, (reader, books)|
      sum +=1 if books.include?(order.book)
      sum
    end

    # binding.pry
    # hash_books!
    # best_book = @hash.max_by(3) {|key, value|  value}.first(3).flatten
    # count_readers = best_book.delete_if{ |i| i.class == String}.sum
    puts "The first three popular book taked #{result_sum} readers"
  end
  
  def most_active_reader
    hsh = @orders.group_by(&:reader)
    best_reader = hsh.max_by do |_key, value|
      value.count
    end.first.name

    # best_reader = hash_readers.max_by {|key, value| value}.first
    puts "Most active reader: #{best_reader}"
  end
     
  private

  def add_book(book)
    @books << book
    @books.uniq!
  end

  def add_order(order)
    @orders << order
  end

  def add_reader(reader)
    @readers << reader
    @readers.uniq!
  end

  def add_author(author)
    @authors << author
    @authors.uniq!
  end


  def hash_books!
    @hash = @orders.inject(Hash.new(0)) do |count, order|
      count[order.book.title] += 1
      count
    end 
  end
    
  def hash_readers
    @hash_readers ||= @orders.inject(Hash.new(0)) do |count, order|
      count[order.reader.name] = count[order.reader.name] + 1 if order.reader
      count
    end
  end
end  
  
  
  


