=begin
  
end

class VowelRemover
    def initialize(text)
      @text = text
      @vowels = ["a", "e", "i", "o", "u"]
    end
  
    def remove_vowels()
      i = 0
      while i < @text.length()
        if @vowels.include? @text[i].downcase
          @text = @text.slice(0,i) + @text.slice(i+1..-1)
        else 
        #binding.irb
        i += 1
      end
      return @text
    end
end

end
  
#   remover = VowelRemover.new("aeiou")
#   puts remover.remove_vowels()
=end