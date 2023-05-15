def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1 unless char == " "
  end
  counter
  counter.to_a.sort_by { |key, value| value }[-1][0]
end

# Intended output:
# 
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
