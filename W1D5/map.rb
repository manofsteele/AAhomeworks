require 'byebug'

class Map
  attr_accessor :map

  def initialize
    @map = []
  end

  def set(key, value)
    debugger
    self.keys.include?(key) ? map[self.keys.index(key)][1] = value : @map.push([key, value])
  end

  def get(key)
    map.each {|el| return el[1] if el[0] == key}
    nil
  end

  def keys
    key_array = []
    map.each {|el| key_array << el[0]}
    key_array
  end

  def delete(key)
    map.each_with_index {|el, idx| self.delete_at(idx) if el[0] == key}
  end

  def show
    map
  end

end
