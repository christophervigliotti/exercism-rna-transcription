class Complement
  def self.of_dna(dna_nucleotides_string)
    @rna_nucleotides_string = ""
    @complements = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }

    dna_nucleotides_string.split('').each { |dna_nucleotide|
        # version_1 @rna_nucleotides_string += get_rna_nucleotide(dna_nucleotide)
        @rna_nucleotides_string += @complements.fetch(dna_nucleotide)
    }
    return @rna_nucleotides_string
  end

  # used in version_1, not used in final solution
  def self.get_rna_nucleotide(dna_nucleotide)
    @rna_nucleotide = ''
    case dna_nucleotide
      when "G"
        @rna_nucleotide = "C"
      when "C"
        @rna_nucleotide = "G"
      when "T"
        @rna_nucleotide = "A"
      when "A"
        @rna_nucleotide = "U"
      #else
        #@rna_nucleotide = ""
      return @rna_nucleotide
    end

  end
end
