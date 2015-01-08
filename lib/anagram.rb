class String
  define_method(:anagram) do |list|
    matches = []
    same_length = []
    same_letters = []
    
    list.each() do |list_member|
      if list_member.length().==(self.length())
        same_length.push(list_member)
      else

      end

    end
    object_split = self.split("")
    same_length.each() do |slword|
      letter_array = []
      object_split.each() do |osletter|
        if slword.include?(osletter)
          letter_array.push(osletter)
        else
        end
      end
      letter_check = letter_array.join()
      if letter_check.length().==self.length()
        matches.push(slword)
      else
      end
    end
    matches
  end
end
