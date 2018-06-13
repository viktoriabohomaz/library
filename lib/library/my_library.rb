require 'yaml'

class MyLibrary
  attr_accessor :books, :orders, :readers, :authors

  def initialize
    @library = [@books = [], @orders = [], @readers = [], @authors = []]
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
    @library = YAML.load_file('../data/library.yml') ||
    File.new('../data/library.yml", "w+')
  end

  def save
    File.open('../data/library.yml", "r+') do |f|
      f.write(@library.to_yaml)
    end
  end

  def most_popular_book
    hsh = @orders.group_by(&:book)
    best_book = hsh.max_by do |_key, value|
      value.count
    end.first.title
    puts "Most popular book: #{best_book}"
  end

  def the_first_three_popular_book
    hsh = @orders.group_by(&:book)
    orders_count = hsh.map do |value|
      value.last.count
    end.sort.reverse.uniq.first(3)
    @books = hsh.select do |_book, orders|
      orders_count.include?(orders.count)
    end.values.flatten.reverse
    result_sum = @books.group_by(&:reader).keys.count
    puts "The first three popular book taked #{result_sum} readers"
  end

  def most_active_reader
    hsh = @orders.group_by(&:reader)
    best_reader = hsh.max_by do |_key, value|
      value.count
    end.first.name
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
end
