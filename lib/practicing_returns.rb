require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length #=> build iteration using a while loop
    collection << yield(array[i]) #=> captures the return values of yielding those items to the block
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

