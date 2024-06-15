=begin

  Remove the First and Last Characters by Helen Yu

  Create a function that removes the first and last characters from a string.
  Examples

  remove_first_last("hello") ➞ "ell"

  remove_first_last("maybe") ➞ "ayb"

  remove_first_last("benefit") ➞ "enefi"

  remove_first_last("a") ➞ "a"

  Notes

  If the string is equal to or fewer than 2 characters long, return the string itself.

=end

def remove_first_last(str)
  return str if str.length <= 2
  return str[1...str.length-1]
end

# Test cases
p remove_first_last("hello") #"ell"
p remove_first_last("benefit") #"enefi"
p remove_first_last("wordy") #"ord")
p remove_first_last("maybe") #"ayb")
p remove_first_last("to") # "to"
p remove_first_last("a") # "a"
p remove_first_last("") # ""
