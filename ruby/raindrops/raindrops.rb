module BookKeeping
  VERSION = 3
end

class Raindrops
  FACTORS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    output = FACTORS.keys.map do |factor|
      FACTORS[factor] if number % factor == 0
    end.join('')

    output.empty? ? number.to_s : output
  end
end
