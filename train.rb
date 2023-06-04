class Train
  attr_accessor :speed
  attr_reader :wagons

  def initialize(number, type, wagons)
    @speed = 0
    @number = number
    @type = type
    @wagons = wagons
  end

  def stop
    self.speed = 0
  end

  def add_wagon
      if @speed == 0
        @wagons += 1
      else
        puts "Train is moving, stop it."
      end
  end

  def remove_wagon
      if @speed == 0 && @wagons > 0
        @wagons -= 1
      else
        puts "Train is moving, stop it or wagons = 0"
      end
  end

  def route(route)
    @route = route
    route.stations.first.add_train(self)
    @index = 0
  end

  def move_forward
    current_station.send_train(self)
    @index += 1
    current_station.add_train(self)
  end

  def move_back
    current_station.send_train(self)
    @index -= 1
    current_station.add_train(self)
  end

  def current_station
    route.stations[@index]
  end

  def next_station
    route.stations[@index + 1]
  end

  def last_station
    route.stations[@index - 1]
  end

end
