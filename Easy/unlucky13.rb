=begin

  Unlucky 13 by zatoichi49

  Given a sorted array of numbers, remove any numbers that are divisible by 13. Return the amended array.
  Examples

  unlucky_13([53, 182, 435, 591, 637]) ➞ [53, 435, 591]
  182 and 637 are divisible by 13.

  unlucky_13([24, 316, 393, 458, 1279]) ➞ [24, 316, 393, 458, 1279]
  No numbers in the array are divisible by 13.

  unlucky_13([104, 351, 455, 806, 871]) ➞ []
  All numbers in the array are divisible by 13.

=end

# Version 1: Procedural
def unlucky13_1(array)

  clean = []

  array.each do |element|
    if element % 13 != 0
      clean.append element
    end
  end

  return clean

end


# Version 2: Functional
def unlucky13_2(array)
  return array.select { |x| x % 13 != 0 }
end

# Version 3: Functional

def unlucky13_3(array)
  return array.reject { |x| x % 13 == 0 }
end

# Test cases
puts "Version 1: Procedural"
p unlucky13_1 [53, 182, 435, 591, 637] # [53, 435, 591]
p unlucky13_1 [24, 316, 393, 458, 1279] # [24, 316, 393, 458, 1279]
p unlucky13_1 [104, 351, 455, 806, 871] # []
p unlucky13_1 [130, 143, 156, 169, 182] # []
p unlucky13_1 [131, 143, 169, 195, 221] # [131]

puts "Version 2: Functional"
p unlucky13_2 [53, 182, 435, 591, 637] # [53, 435, 591]
p unlucky13_2 [24, 316, 393, 458, 1279] # [24, 316, 393, 458, 1279]
p unlucky13_2 [104, 351, 455, 806, 871] # []
p unlucky13_2 [130, 143, 156, 169, 182] # []
p unlucky13_2 [131, 143, 169, 195, 221] # [131]

puts "Version 3: Functional"
p unlucky13_3 [53, 182, 435, 591, 637] # [53, 435, 591]
p unlucky13_3 [24, 316, 393, 458, 1279] # [24, 316, 393, 458, 1279]
p unlucky13_3 [104, 351, 455, 806, 871] # []
p unlucky13_3 [130, 143, 156, 169, 182] # []
p unlucky13_3 [131, 143, 169, 195, 221] # [131]
