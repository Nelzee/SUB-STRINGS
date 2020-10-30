def substrings(first_str, sec_str)
    frequency = Hash.new{0}
    hold = first_str.gsub(/[[:punct:]]/, '').split
    sec_str.each {|word| 
        hold.each { |wrd|
            if wrd.upcase.include?(word.upcase)
                frequency[word] += 1
            end
        }
    }
    return frequency
end
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("Howdy partner, sit down! how's it going?", dictionary)