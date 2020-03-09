require './brave.rb'
require './monster.rb'

# キャラクタークラスをインスタンス化
brave = Brave.new(name: "マイケル", hp: 500, attack: 100, guard: 40)
monster = Monster.new(name: "バラモス", hp: 700, attack: 80, guard: 50)

# 自己紹介
brave.attribute
brave.info

monster.attribute
monster.info

# 戦闘開始
puts <<~BATTLE

バトル開始！！

BATTLE

turn = 1

while brave.hp > 0 && monster.hp > 0
  puts <<~AAA
  ---------------------
    第#{turn}ターン
  ---------------------
  勇者の残りHP：#{brave.hp}
  モンスターの残りHP：#{monster.hp}
  AAA
  # 勇者のターン
  brave.attack(monster)
  if monster.hp <= 0
    break
  end
  # モンスターのターン
  monster.attack(brave)
  turn += 1
end

if brave.hp <= 0 
  puts "勇者は敗北した。"
elsif monster.hp <= 0
  puts "モンスターを倒した！"
end

