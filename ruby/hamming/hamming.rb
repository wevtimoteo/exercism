module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    return 0 if strand_a.size != strand_b.size

    mutations = 0

    strand_a.split('').each_with_index do |nucleotide, index|
      if nucleotide != strand_b[index]
        mutations += 1
      end
    end

    mutations
  end
end
