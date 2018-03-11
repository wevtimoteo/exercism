module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from(moment)
    moment + 1_000_000_000
  end
end
