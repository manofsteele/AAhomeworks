fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  longest_length = 0
  longest = nil
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      if idx1 != idx2
        if el1.length > longest_length && el1.length > el2.length
          longest = el1
          longest_length = longest.length
        end
      end
    end
  end
  longest
end



def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length/2

  left, right = merge_sort(arr.take(mid)), merge_sort(arr.drop(mid))

  merge(left, right)
end


def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    left.first.length < right.first.length ? merged << left.shift : merged << right.shift
  end

  merged + left + right
end

def dominant_octopus(arr)
  sorted = merge_sort(arr)
  sorted.last
end

def clever_octopus(arr)
  longest_length = 0
  longest = nil
  arr.each do |el|
    if el.length > longest_length
      longest = el
      longest_length = longest.length
    end
  end
  longest
end


tiles_array = ["up", "right-up", "right", "right-down",
  "down", "left-down", "left",  "left-up" ]

tiles_hash = Hash.new()
tiles_array.each_with_index do |el, idx|
  tiles_hash[el] = idx
end

def slow_dance(dir, tiles_array)
  tiles_array.each_index do |idx|
    return idx if tiles_array[idx] == dir
  end
  nil
end

def constant_dance(dir, tiles_hash)
  tiles_hash[dir]
end

puts "Sluggish octopus: #{sluggish_octopus(fish_array)}"
puts "dominant octopus: #{dominant_octopus(fish_array)}"
puts "Clever octopus: #{clever_octopus(fish_array)}"
puts "Slow dance: #{slow_dance("up", tiles_array)}"
puts "Slow dance: #{slow_dance("right-down", tiles_array)}"
puts "Constant dance: #{constant_dance("up", tiles_hash)}"
puts "Constant dance: #{constant_dance("right-down", tiles_hash)}"
