class Room

  attr_accessor :name, :description, :paths

  def initialize(name, description)
    @name = name
    @description = description
    @paths = {}
  end

  def go(direction)

    if @paths[direction] == nil and @paths.include? '*'
      @paths['*']
    else
      @paths[direction]
    end
  end

  def add_paths(paths)
    @paths.update(paths)
  end
end
