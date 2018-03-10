module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strands_a, strands_b)
    raise ArgumentError if strands_a.length != strands_b.size

    strands = strands_a.split(//).zip strands_b.split(//)

    strands.count do |base_a, base_b|
      base_a != base_b
    end
  end
end
