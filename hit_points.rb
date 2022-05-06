class HitPoints
  attr_reader :health

  def initialize
    @health = 60
  end

  def attack
    @health -= 10
  end

  def self.instance
    @hit_points ||= HitPoints.new
  end
end