def join_ingredients(src)
  # (src) Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  join_ingredients = []
  
  index = 0
  while index < src.length do
    inner = src[index]
    join_ingredients << "I love #{inner[0]} and #{inner[1]} on my pizza"
    index += 1
  end
join_ingredients
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  find_greater_pair = []

  i = 0
  while i < src.length do
    find_greater_pair <<  (src[i][0] > src[i][1] ? src[i][0] : src[i][1])
    i += 1
  end

  find_greater_pair
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
   total_even_pairs = 0
  i = 0
  while i < src.length do
    if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0)
      total_even_pairs += (src[i][0] + src[i][1])
    end
    i += 1
  end

  total_even_pairs
end
