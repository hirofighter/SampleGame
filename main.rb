class Character
  attr_reader :name, :attack, :guard, :hp
  attr_accessor :hp

  def initialize(**param)
    @name = param[:name] #名前
    @attack = param[:attack] #攻撃力
    @guard = param[:guard] #守備力
    @hp = param[:hp] #体力
  end

end

class Brave < Character

  def introduce
    puts "私は勇者"
  end
end


class Monster < Character
  def introduce
    puts "俺様はモンスター"
  end
end


# キャラクタークラスをインスタンス化
brave = Brave.new(name: "マイケル", hp: 500, attack: 100, guard: 70)
monster = Monster.new(name: "バラモス", hp: 700, attack: 80, guard: 30)


brave.introduce
puts <<~TEXT
#{brave.name}
HP：#{brave.hp}
攻撃力：#{brave.attack}
守備力：#{brave.guard}
----------------
TEXT

monster.introduce
puts <<~TEXT
名前：#{monster.name}
HP：#{monster.hp}
攻撃力：#{monster.attack}
守備力：#{monster.guard}
----------------
TEXT
