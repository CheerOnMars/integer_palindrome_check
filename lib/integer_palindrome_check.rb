# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  is_palindrome = true
  if  number == nil
    return false
  elsif number.class != Integer
    raise ArgumentError.new("Input must be an integer")
  elsif
    number_string = number.to_s
    number_length = number_string.length
    (number_length/2).times do |i|
      if number[i] != number[number_length-(i+1)]
        is_palindrome = false
      end
      i += 1
    end
    return is_palindrome
  end
end
