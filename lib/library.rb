require_relative "../lib/library/version.rb"
require_relative '../lib/library/author.rb'
require_relative '../lib/library/book.rb'
require_relative '../lib/library/my_library.rb'
require_relative '../lib/library/order.rb'
require_relative '../lib/library/reader.rb'

module Library

author1 = Author.new("Oscar Wilde", "was an Irish poet and playwright")
book1 = Book.new("Portrait of Dorian Gray", author1)
reader1 = Reader.new(name: "Vika", email: "olololo@examle.com", city: "Dnipro", street: "Pola", house: "12")
order1 = Order.new(book1, reader1)   

author2 = Author.new("Leo Tolstoy", "Russia")
book2 = Book.new("Anna Karenina", author2)
reader2 = Reader.new(name: "Pasha", email: "pasha@examle.com", city: "Kyiv", street: "Yavornitskogo", house: "55")
order2 = Order.new(book1, reader2)   

author3 = Author.new("Thomas Mann", "Germany")
book3 = Book.new("Boyhood", author2)
reader3 = Reader.new(name: "Vlad", email: "vlad@examle.com", city: "Lviv", street: "Bandery", house: "1488")
order3 = Order.new(book2, reader3)   

author4 = Author.new("Franz Kafka", "Bohemia")
book4 = Book.new("War and Peace", author2)
reader4 = Reader.new(name: "Vlada", email: "vladislava@examle.com", city: "Dnipro", street: "Pobeda", house: "123")
order4 = Order.new(book1, reader3)

author5 = Author.new("Edgar Allan Poe", "United States")
book5 = Book.new("The Complete Tales", author5)
reader5 = Reader.new(name: "Jekas", email: "jekas@examle.com", city: "Dnipro", street: "PobedaDeda", house: "183")
order5 = Order.new(book2, reader5)

author6 = Author.new("Italo Svevo", "Italy")
book6 = Book.new("The Complete Stories", author4)
reader6 = Reader.new(name: "Denis", email: "denis@examle.com", city: "Dnipro", street: "Pobeda", house: "964")
order6 = Order.new(book1, reader5)

author7 = Author.new("Fyodor M Dostoyevsky", "Russia")
book7 = Book.new("War and Peace", author2)
reader7 = Reader.new(name: "Vlada", email: "vladislava@examle.com", city: "Dnipro", street: "Pobeda", house: "123")
order7 = Order.new(book3, reader3)

author8 = Author.new("Nikolai Gogol", "Russia")
book8 = Book.new("Dead Souls", author8)
reader8 = Reader.new(name: "Zlaya", email: "zlaya@examle.com", city: "Lviv", street: "Street", house: "19")
order8 = Order.new(book3, reader7)

author9 = Author.new("Joao Guimaraes Rosa", "Brazil")
book9 = Book.new("Crime and Punishment", author7)
reader9 = Reader.new(name: "Dima", email: "dima@examle.com", city: "Dnipro", street: "Stroitelei", house: "154")
order9 = Order.new(book2, reader6)

author10 = Author.new("Lu Xun", "China")
book10 = Book.new("Diary of a Madman and Other Stories", author10)
reader10 = Reader.new(name: "Olena", email: "olena@examle.com", city: "Kyiv", street: "Kosmos", house: "96")
order10 = Order.new(book10, reader5)

author11 = Author.new("Dante Alighieri", "Italy")
book11 = Book.new("The Divine Comedy", author11)
reader11 = Reader.new(name: "Kate", email: "kate@examle.com", city: "Dnipro", street: "Strikalo", house: "74")
order11 = Order.new(book11, reader3)

author12 = Author.new("Miguel de Cervantes Saavedra", "Spain")
book12 = Book.new("Don Quixote", author12)
reader12 = Reader.new(name: "Sam", email: "sam@examle.com", city: "Kharkiv", street: "RubyOnRails", house: "103")
order12 = Order.new(book8, reader3)

library = MyLibrary.new
library.push(book1)
library.push(reader1)
library.push(order1)

library.push(author2)
library.push(book2)
library.push(reader2)
library.push(order2)

library.push(author3)
library.push(book3)
library.push(reader3)
library.push(order3)

library.push(author4)
library.push(book4)
library.push(reader4)
library.push(order4)

library.push(author5)
library.push(book5)
library.push(reader5)
library.push(order5)

library.push(author6)
library.push(book6)
library.push(reader6)
library.push(order6)

library.push(author7)
library.push(book7)
library.push(reader7)
library.push(order7)

library.push(author8)
library.push(book8)
library.push(reader8)
library.push(order8)

library.push(author9)
library.push(book9)
library.push(reader9)
library.push(order9)

library.push(author10)
library.push(book10)
library.push(reader10)
library.push(order10)

library.push(author11)
library.push(book11)
library.push(reader11)
library.push(order11)

library.push(author12)
library.push(book12)
library.push(reader12)
library.push(order12)

library.save
library.load

library.most_popular_book
library.most_active_reader
library.the_first_three_popular_book


end
