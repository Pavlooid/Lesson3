class Station
  @@trains = []
  $trains = {}

  def initialize(name)
    @name = name
  end

  def add_trains(train, type)
    @type = type
    @train = train
    @@trains << train
    $trains[train] = type
    puts "Train #{train}(#{type}) arrived on station."
  end

  def show_trains
    return @@trains
  end

  def show_trains_by_type
    return $trains
  end

  def send_train(train)
    @@trains.delete(train)
    $trains.delete(train)
    puts "#{train} was succesfully send from station."
  end

 end
