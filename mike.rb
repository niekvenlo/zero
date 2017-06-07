# REGEX Experiment

str = "The 299 affine subs cipher is a type of 200 monoalphabetic substitution cipher, wherein 0000 each 1000 letter in an alphabet is mapped to its numeric equivalent, encrypted using a simple 299 mathematical function, and 1991 Thursday converted 415-688-5129 back to a letter. The formula used means that each letter encrypts to one other letter, and back again, meaning the cipher is 2002 essentially a standard substitution cipher Tues 099 with a rule governing which letter wed wednesday goes to mon 012 which. aanndd 4156885129 249 250 251 3 03 34"

wikistr = "The '''affine cipher''' [[is]] a type of [[monoalphabetic substitution cipher]], wherein each letter in an alphabet is mapped to its numeric equivalent, encrypted using a simple mathematical function, and converted back to a letter. The formula used means that each letter encrypts to one other letter, and back again, meaning the cipher is essentially a standard substitution cipher with a rule governing which letter goes to which. As such, it has the weaknesses of all substitution ciphers. Each [[letter]] is [[cypher|enciphered]] with the function {{math|(''ax'' + ''b'') mod 26}}, where {{mvar|b}} is the magnitude of the shift."

# p wikistr.scan /\[{2}(?<area>.*?)\]{2}/
# p wikistr.match(/(\[{2}(?:(?<area>[a-zA-Z ]*?)\|(?<ana>.*?))\]{2})|(\[{2}(?:(?<area>[a-zA-Z ]*?))\]{2})/).captures
matches = []
wikistr.scan(/\[{2}(?<link>[a-zA-Z ]*?)\|?(?<name>[a-zA-Z ]*?)\]{2}/) { matches << $~}
matches.each { |match| puts match.captures[1]}

# p /\bmon\b/ =~ str # Find index of first match
# boo = %r{\bcipher\b}
# p str.scan boo
# fee = %r{
#   \b
#   (?:mon|tues|
#   wed(?:nes)?|  # wed or wednes or wednesday
#   thurs|fri|
#   sat(?:ur)?|   # sat or satur or saturday
#   sun)
#   (?:day)?      # optional -day suffix
#   \b
# }xi   # x: ignore whitespace, i: case-insensitive
# p str.scan fee                          # Day of the week
# p str.scan /\b\d{3}\W?\d{3}\W?\d{4}\b/  # Phone numbers
# p str.scan /\b(?:19|20)\d{2}\b/         # Recent years
# p str.match(/([a-z])\1/)                # Repeated letter ("ff")
# p str.scan(/([a-z])\1/).join
# p str.scan(/\b(?:\d{1,2}|0\d{2}|1\d{2}|2[0-4]\d|25[0-5])\b/) # 0-255
