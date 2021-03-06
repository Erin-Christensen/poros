#from codewars
#
# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
# Examples:
#
# "din" => "((("
#
# "recede" => "()()()"
#
# "Success" => ")())())"
#
# "(( @" => "))(("

#my solution
def duplicate_encode(word)
   new_word = word.downcase.chars.map { |c| word.downcase.count(c) > 1 ? c = ')' : c = '(' }.join
end

#more solutions
def duplicate_encode(word)
  word.downcase.gsub(/./) do |char|
    word.downcase.count(char.downcase) > 1 ? ")" : "("
  end
end
