class Player
  DEFAULT_HP = 100
  attr_reader :name, :hp
  attr_accessor :hp

  def initialize(name, health = DEFAULT_HP)
    @name = name
    @hp = health
  end
end
