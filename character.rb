class Character
  attr_accessor :physical, :attack, :guard, :hp

  def initialize(**param)
    @physical = param[:physical] #体力
    @attack = param[:attack] #攻撃力
    @guard = param[:guard] #守備力
    @hp = param[:hp] #HP
  end

  def introduction
    puts <<~ EOS
    ライフ：#{@hp}
    体力：#{@physical}
    攻撃力：#{@attack}
    守備力：#{@guard}
    EOS
  end

end

hero = Character.new(physical: 100, attack: 50,guard: 30, hp: 20)

hero.introduction
