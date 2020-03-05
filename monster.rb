require './character.rb'

class Monster < Character
  
  # ステータス表示メソッド
  def attribute
    puts "【モンスター：#{@name}】"
  end

  def attack(brave)
    puts "モンスターの攻撃!!"
    # ダメージを計算
    # ダメージ = モンスターの攻撃力 - 勇者の守備力
    damage = @attack - brave.guard
    # hpを減らす処理
    brave.hp -= damage
    #「モンスターは勇者に◯のダメージを与えた」などを出力
    puts "「モンスターは勇者に#{damage}のダメージを与えた」"
    puts "勇者の残りHP：#{brave.hp}"
  end

end
