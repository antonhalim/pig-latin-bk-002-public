require 'pry'


def to_pig_latin(string)
    array = string.split(" ")
    pigarray = []
    unchanged = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    array.collect do |words|

      if unchanged.include?(words)
          pigarray<< words
      else
            partial = words.partition(words[words.index(/[aeiou]/)])
            words = partial
            words[3] = words[0]
            words.shift
            words << 'ay'

             pigarray << words.join

        end
    end
    pigarray.join(' ')
end



# great = eatgray
# "proggramming" = oggrammingproay
# #index(/[aeiou]/) -1

  #   wordsarray = string.split" "
  #   #wordsarray = ["i", "love", "you"]
  #   wordsarray.each do |words|
  #     #words = "i"
  #     firstchar = words =~ /\A[aeiou]/i
  #   if  firstchar == 0
  #       words << words[0] + 'ay'
  #       words.slice!(0)
  #       words
  #       binding.pry
  #     end
  #   end
