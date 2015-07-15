#keys, monster dropped items, items you can combine

class Item
	TYPES = [:potion, :sword]

  # TODO: so you don't actually need an attr_accessor on a constant like this. You can look up the TYPES constant from outside the
  # class using Item::TYPES without explicitly defining an accessor
	attr_accessor :TYPES

	def initialize
		@type = TYPES.sample
	end

	def interact(player)
		case @type
		when :potion
			puts "You pick up #{self}."
			player.heal(10)
		when :sword
			puts "You pick up #{self}."
			player.ap += 1
		end
	end

	def to_s
		"Sweet, you found an awesome #{@type.to_s}!"
	end

end

