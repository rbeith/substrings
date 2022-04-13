dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  string = string.downcase.split
  result = Hash.new(0)
  
  string.each do |word|
    dictionary.reduce(result) do |memo, substring| 
      if word.include?(substring)
        memo[substring] += 1
        memo
      end
      memo
    end
  end
  
  result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)