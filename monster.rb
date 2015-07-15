#create special monsters. ex: end boss, monster that drops key
#have monsters drop items

class Monster
  # TODO same with player, spell out these names
	attr_accessor :hp, :ap

	MAX_HP = 10

	def initialize
		@hp = MAX_HP
		@ap = 1
	end

	def alive?
		@hp > 0
	end

  # TODO often mutative methods - methods which directly change the state of the object they are called on - end with a ! so you might want to rename this def hurt!(amount)
	def hurt(amount)
		@hp -= amount
	end

	def to_s
		"A monster! AGHHHGHGHGH!"
	end

	def interact(player)
		while player.alive?
			puts "You hit the monster for #{player.ap} points."
			hurt(player.ap)
			break unless alive?
			player.hurt(@ap)
			puts "The monster hits you for #{@ap}."
		end
	end

end

