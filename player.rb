#name your character
#start out with one item of choice?
#other attributes that affect your fights/obstacles positively and negatively

class Player
  # TODO while x and y are good for coordinates, generally use the full spelled-out name
  # for variables to be more explicit, so like health_points and attack_points
	attr_accessor :hp, :ap, :x, :y

	MAX_HP = 100

	def initialize
		@hp = MAX_HP
		@ap = 1
		@x, @y = 0, 0
	end

	def alive?
		@hp > 0
	end

  # TODO like with monster, mutative methods usually take a ! at the end,
  # so def hurt!(amount)
	def hurt(amount)
		@hp -= amount
	end

  # TODO same as above, def heal!(amount)
	def heal(amount)
		@hp += amount
		@hp = [@hp, MAX_HP].min # nice!
	end

	def print_status
		puts "*" * 80
		puts "HP: #{@hp}/#{MAX_HP}"
		puts "AP: #{@ap}"
		puts "*" * 80
	end
end

