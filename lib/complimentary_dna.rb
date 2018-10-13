#codewars

# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.
#
# If you want to know more http://en.wikipedia.org/wiki/DNA
#
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
#
# More similar exercise are found here http://rosalind.info/problems/list-view/ (source)
#
# DNA_strand ("ATTGC") # return "TAACG"
#
# DNA_strand ("GTAT") # return "CATA"

#my solution lol
def DNA_strand(dna)
  new = dna.chars.map do |char|
    case char
    when "A"
      char = "T"
    when "T"
      char = "A"
    when "G"
      char = "C"
    when "C"
      char = "G"
    else
      char = "lol"
    end
  end
  new.join
end


#more solutions
def DNA_strand(dna)
  dna.tr("ACTG", "TGAC")
end

def DNA_strand(dna)
  dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

def DNA_strand(dna)
   hsh_lookup = {
      'A' => 'T',
      'T' => 'A',
      'C' => 'G',
      'G' => 'C'
   }

   dna.chars.map { |char| hsh_lookup[char] }.join
end
