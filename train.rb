class Train
  attr_accessor :speed, :carriage
  attr_reader :location

  def initialize(speed = 0, number, type, carriage)
    @speed = speed
    @number = number
    @type = type
    @carriage = carriage
  end

  def stop
    self.speed = 0
  end

  def carriages(action)
    if action == 'add'
      if @speed == 0
        @carriage += 1
      else
        puts "Train is moving, stop it."
      end
    elsif action == 'unhook'
      if @speed == 0 && @carriage > 0
        @carriage -= 1
      else
        puts "Train is moving, stop it or carriages = 0"
      end
    else
      puts "Error! Write 'add' or 'unhook' to work with carriage."
    end
  end

  def route
    @route = $stations.to_s
    @location = $stations.first
    @index = 0
  end

  def move_forward
    @index = $stations.find_index(@location)
    @location = $stations[@index += 1]
  end

  def move_back
    @index = $stations.find_index(@location)
    @location = $stations[@index -= 1]
  end

  def current_location
    puts @location = $stations[@index]
    puts @location = $stations[@index + 1]
    puts @location = $stations[@index - 1]
  end

end
