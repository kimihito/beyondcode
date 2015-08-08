class Film
  attr_accessor :prev, :next
  attr_reader :season

  def initialize data, season
    @data = data
    @season = season
  end

  def path
    "/#{slug}"
  end

  def method_missing method_name, *args
    @data.send method_name, args
  end
end
