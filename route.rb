class Route
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def add(position, station) # Укажите промежуток для добавления станции
    stations.insert(position, station)
  end

  def delete(station)
    return "Can't delete first or last station." if (station == stations.first) || (staton == stations.last)
    stations.delete(station)
  end

end
