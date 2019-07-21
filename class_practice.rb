
class Pet
	attr_accessor :name, :owner_name
end

class Ferret < Pet

	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla < Pet

	def squeek
		return "eeeep"
	end
 
end
 
class Parrot < Pet
 
	def tweet
		return "tweet"
	end

end
 
my_ferret = Ferret.new
my_ferret.name= "Fredo"
ferretname = my_ferret.name
 
my_parrot = Parrot.new
my_parrot.name= "Budgie"
parrotname = my_parrot.name
 
my_chincilla = Chincilla.new
my_chincilla.name= "Dali"
chincillaname = my_chincilla.name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chincillaname} says #{my_chincilla.squeek}."