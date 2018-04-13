module Initialize
  def initialize
    self.class.all << self
  end
end
