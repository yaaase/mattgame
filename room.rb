#TODO:
#create a designated end room, or a random endroom, with a special boss
#create certain designated rooms on the grid that are blocked off completely
#create locked rooms and keys found in other rooms or dropped from special monsters
#obstacle rooms, new obstacle class that is randomized into rooms array

class Room

	attr_accessor :size, :content

	def initialize
		@content = get_content
		@size = get_size
		@adjective = get_adjective
	end

	def interact(player)
		if @content
			@content.interact(player)
			@content = nil
		end
	end

	def to_s
		"You are in a #{@size} room. It is #{@adjective}."
	end

	private
	def get_content
		[Monster, Item].sample.new
	end

  # TODO you can probably just use symbols here rather than strings,
  # so like [:small, :medium, :large].sample
  # it's not a huge issue, but string literals like that will be created in memory each
  # time this method is invoked, where symbols will not. it's also somewhat more idiomatic to use
  # symbols
	def get_size
		["small", "medium", "large"].sample
	end

  # same as above, use symbols here
	def get_adjective
		["pretty", "ugly", "hideous"].sample
	end

end

