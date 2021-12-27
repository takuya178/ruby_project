require_relative "pokemon"
require_relative "character"
require_relative "rival"

# require_relative 'main_character'
# 御三家ポケモンの初期値


# csvで書いたらこうなる p pokemon = Pokemon.import(path: "Pokemon.csv")

pokemon = Pokemon.seed
character = Character.new(name: '主人公', money: 1000, pokemon: pokemon)

rival = Rival.new(name: '高島ログ', money: 10000, pokemon: pokemon)
# pokemon = Pokemon.seed

# 最初のポケモンを選ぶ
character.character_pokemon

# ライバルが選んだポケモンの弱点となるタイプのポケモンを選ぶ
puts rival.rival_pokemon(character)

# ライバルとバトル
Rival.battle

# バトルに勝利して経験値をもらう
