class Dog
  def self.all
    @dogs ||= []
  end

  def initialize(name)
    @name = name

    self.class.all << self
  end
end

class Husky < Dog
  def self.all_huskies
    @@huskies ||= []
  end

  def initialize(name)
    @name = name

    self.class.all << self
    self.class.all_huskies << self
  end
end


class HuskyPups < Husky
end

Husky.new("Jane")
HuskyPups.new("Ernest")
