class Brave
  attr_accessor :name, :attack, :guard, :hp

  def initialize(**param)
    @name = param[:name] #名前
    @attack = param[:attack] #攻撃力
    @guard = param[:guard] #守備力
    @hp = param[:hp] #体力
  end

end

# 勇者クラスをインスタンス化
brave = Brave.new

# パラメータ
brave.name = "マイケル"
brave.hp = 500
brave.attack = 100
brave.guard = 70

puts <<~TEXT
名前：#{brave.name}
HP：#{brave.hp}
攻撃力：#{brave.attack}
守備力：#{brave.guard}
TEXT