class Character
  attr_accessor :physical, :attack, :guard, :hp

  def initialize(**param)
    @physical = param[:physical] #体力
    @attack = param[:attack] #攻撃力
    @guard = param[:guard] #守備力
    @hp = param[:hp] #HP
  end

end