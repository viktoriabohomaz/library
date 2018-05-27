class Reader
  attr_accessor :name, :email, :city, :street, :house
  
	def initialize(name:, email:, city:, street:, house:)
		@name = name
		@email = email
		@city = city
		@street = street
		@house = house
	end

	def inspect
		name
	end
	#def to_s
	#    "Reader: #{@name} / #{@email}"
	#end
end 	
