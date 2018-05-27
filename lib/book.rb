class Book
  attr_accessor :title, :author
  
  def initialize(title, author)
    @title = title
    @author = author
  end

  def inspect
    "#{title} => #{author}"
  end

  #def to_s
  #	"Book: #{@title} / Author: #{@author}"
  #end
end
