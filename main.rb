require './brave.rb'
require './monster.rb'

# キャラクタークラスをインスタンス化
brave = Brave.new(name: "マイケル", hp: 500, attack: 100, guard: 70)
monster = Monster.new(name: "バラモス", hp: 700, attack: 80, guard: 30)

# 自己紹介
brave.attribute
brave.info

monster.attribute
monster.info

# 戦闘開始
puts <<~BATTLE

バトル開始！！

BATTLE
# 勇者のターン
brave.attack(monster)
# モンスターのターン
monster.attack(brave)
