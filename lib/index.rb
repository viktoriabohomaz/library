require_relative '../lib/author.rb'
require_relative '../lib/book.rb'
require_relative '../lib/library.rb'
require_relative '../lib/order.rb'
require_relative '../lib/reader.rb'

     
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
    
   
     
    library = Library.new('', '', '', '')
    library.add_author(author1)
    library.add_book(book1)
    library.add_reader(reader1)
    library.add_order(order1)
    
    library.add_author(author2)
    library.add_book(book2)
    library.add_reader(reader2)
    library.add_order(order2)
   
    library.add_author(author3)
    library.add_book(book3)
    library.add_reader(reader3)
    library.add_order(order3)
   
    library.add_author(author4)
    library.add_book(book4)
    library.add_reader(reader4)
    library.add_order(order4)
    
    library.add_author(author5)
    library.add_book(book5)
    library.add_reader(reader5)
    library.add_order(order5)
    
    library.add_author(author6)
    library.add_book(book6)
    library.add_reader(reader6)
    library.add_order(order6)
    
    library.add_author(author7)
    library.add_book(book7)
    library.add_reader(reader7)
    library.add_order(order7)
    
    library.add_author(author8)
    library.add_book(book8)
    library.add_reader(reader8)
    library.add_order(order8)
    
    library.add_author(author9)
    library.add_book(book9)
    library.add_reader(reader9)
    library.add_order(order9)
    
    library.add_author(author10)
    library.add_book(book10)
    library.add_reader(reader10)
    library.add_order(order10)
    
    library.add_author(author11)
    library.add_book(book11)
    library.add_reader(reader11)
    library.add_order(order11)
    
    library.add_author(author12)
    library.add_book(book12)
    library.add_reader(reader12)
    library.add_order(order12)
  
    
     
    
    library.save
    library.load
    
    library.most_popular_book
    library.most_active_reader
    