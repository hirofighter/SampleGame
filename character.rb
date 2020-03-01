class Character
  attr_accessor :physical, :attack, :guard
  def initialize(**param)
    @physical = param[:physical]
    @attack = param[:attack]
    @guard = param[:guard]
  end

end