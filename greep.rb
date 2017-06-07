s = "Bees are flying insects closely related to wasps and ants, known for their role in pollination and, in the case of the best-known bee species, the European honey bee, for producing honey and beeswax. Bees are a monophyletic lineage within the superfamily Apoidea and are presently considered a clade, called Anthophila. There are nearly 20,000 known species of bees in seven recognized biological families. They are found on every continent except Antarctica, in every habitat on the planet that contains insect-pollinated flowering plants. test.rb"


s = "Placeholder for 1 looong String"
p [1,'2',3,'4'].grep(Integer)
  # => [1,3]
p s.split.grep(/\d/)
  # => ["1"]
p s.split.grep(/(\w)\1/)
  # => ["looong"]
p s.split.grep_v(/o/)
  # => ["1", "String"]
p s.methods.grep(/norm/)
  # => [:unicode_normalize, :unicode_normalize!, :unicode_normalized?]
p [1,2,4,2,5].sample
  # => 2 (random element)
p (0..2000).first(5).map { |x| x.to_s(2) }
  # => ["0", "1", "10", "11", "100"]




# p s.split.grep(/^[A-Z]/)          # Find all capitalised words.
# p s.split.grep(/[aeiou]{2}/)      # Find all words with two consecutive vowels.
# p s.split.grep(/(\w*).rb\b/){$1}  # Finds all rb filenames.
#
#
# p s.scan(/\d/)                  # Find all digits.
# p "No Q found" if s !~ /q/
