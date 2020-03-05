class Character
  attr_reader :name, :attack, :guard
  attr_accessor :hp

  def initialize(**param)
    @name = param[:name] #名前
    @attack = param[:attack] #攻撃力
    @guard = param[:guard] #守備力
    @hp = param[:hp] #体力
  end

  def info
    puts <<~TEXT
    ----status------
    HP：#{@hp}
    攻撃力：#{@attack}
    守備力：#{@guard}
    ----------------
    TEXT
  end
  
end