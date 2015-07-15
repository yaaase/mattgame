#certain ways are blocked/designated (special rooms, obstacles)

class World
	WORLD_WIDTH = 10
	WORLD_HEIGHT = 10

	def initialize
    # nice multidimensional array!
		@rooms = Array.new(WORLD_HEIGHT, Array.new(WORLD_WIDTH))
	end

  # TODO: the logic here is perfectly fine, but from an OO perspective, usually you want to tell the object to move, rather than having some other object move it. It's like if you told a dog to move: you wouldn't say, "move your left leg forward, now your right, etc" you'd just say "move over here" so generally you'd want monster and player to have move!() methods defined on them. There are a lot of ways you can do this: you can initialize monster and player with a World object, and let them check the bounds of their movement themselves. you can extract a module called Movable which is responsible for moving an entity, and have both Monster and Player include that moduel, etc. We can discuss - this is a good OO design point to look at though

	def move_n(entity)
		entity.y += 1 if entity.y < WORLD_HEIGHT - 1
	end

	def move_s(entity)
		entity.y -= 1 if entity.y > 0
	end

	def move_e(entity)
		entity.x += 1 if entity.x < WORLD_WIDTH - 1
	end

	def move_w(entity)
		entity.x -= 1 if entity.x > 0
	end

	def get_room(entity)
		@rooms[entity.x][entity.y] ||= Room.new
	end
end

