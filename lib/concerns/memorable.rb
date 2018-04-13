module Memorable
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end

module Initialize
  def initialize
    self.class.all << self
  end
end
