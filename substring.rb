dictionary = ["Below", "down","go","going","horn","how","Howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)    
    result = Hash.new(0)    
    str.downcase.split.each do |check_word|        
        dictionary.select do |word|
            result[word.downcase] += 1 if check_word.include? (word.downcase)             
        end
    end
    result    
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)