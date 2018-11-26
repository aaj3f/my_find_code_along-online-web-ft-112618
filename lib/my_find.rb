require 'pry'

collection = (1..100)
def my_find(collection)
  i = 0
  while i < collection.size
    # binding.pry
    return yield(collection[i]) if yield(collection[i])
    i += 1
  end
end

puts my_find(collection) { |x| x % 3 == 0 && x % 5 == 0 }
