require './character.rb'

class Brave < Character

  # ステータス表示メソッド
  def attribute
    puts "【勇者：#{@name}】"
  end

  def attack(monster)
    puts "勇者の攻撃!!"
    # ダメージを計算
    # ダメージ = 勇者の攻撃力 - モンスターの守備力
    damage = @attack - monster.guard
    # hpを減らす処理
    monster.hp -= damage
    #「勇者はモンスターに◯のダメージを与えた」などを出力
    puts "「勇者はモンスターに#{damage}のダメージを与えた」"
    puts "モンスターの残りHP：#{monster.hp}"

  end
end

