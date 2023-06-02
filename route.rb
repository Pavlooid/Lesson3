class Route
$stations = []

  def initialize(first, last)
    @first = first
    $last = last
    $stations << first
    $stations << last
  end

  def add(place, station) # Укажите промежуток для добавления станции
    @place = place.to_f
    @station = station
    $stations.insert(place, station)
  end

  def delete(station)
    $stations.delete(station)
  end

  def show
    return $stations
  end
end
