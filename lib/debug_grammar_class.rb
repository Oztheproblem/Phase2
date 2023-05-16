class GrammarStats
  def initialize
    @passed_check = 0
    @num_good = 0
  end

  def check(text)
    fail "Not a sentence." if text.strip.empty?
    @passed_check += 1
    first_letter_up = text[0] == text[0].upcase
    last_character_valid = [".", "!", "?"].include? text[-1]
    if first_letter_up && last_character_valid
      @num_good += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    if @passed_check == 0
      return 0
    else
      return (@num_good * 100 / @passed_check)
    end
  end
end

=begin
grammar_stats = GrammarStats.new
puts grammar_stats.check("The cat is angry at the dog.") # true
puts grammar_stats.percentage_good # 100

puts grammar_stats.check("the cat is angry at the dog.") # false
puts grammar_stats.percentage_good # 50

puts grammar_stats.check("Hello, how are you?") # true
puts grammar_stats.percentage_good # 66

puts grammar_stats.check("The lemons are ripe.") # true
puts grammar_stats.percentage_good # 75


# grammar_stats = GrammarStats.new
# puts grammar_stats.check(" ") # Fail
# puts grammar_stats.percentage_good # Fail
=end