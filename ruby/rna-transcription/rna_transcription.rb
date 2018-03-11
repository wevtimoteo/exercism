module BookKeeping
  VERSION = 4
end

class Complement
  TRANSCRIPTION = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strands)
    rna_strands = strands.split(//).map do |strand|
      TRANSCRIPTION[strand]
    end.join('')

    rna_strands.size == strands.size ? rna_strands : ''

  end
end
