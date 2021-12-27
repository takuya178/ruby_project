# 初期ポケモンのデータ
class Pokemon
  attr_accessor :hp
  attr_reader :name, :type, :attack, :defense, :speed, :hitokage, :zenigame, :fusigedane

  def initialize(**params)
    @name = params[:name]
    @type = params[:type]
    @hp = params[:hp]
    @attack = params[:attack]
    @defense = params[:defense]
    @speed = params[:speed]
  end

  def self.seed
    hitokage = Pokemon.new(
      name: 'ヒトカゲ',
      type: 'ほのお',
      hp: 50,
      attack: 10,
      defense: 5,
      speed: 5
    )
    zenigame = Pokemon.new(
      name: 'ゼニガメ',
      type: 'みず',
      hp: 50,
      attack: 10,
      defense: 5,
      speed: 5
    )
    fusigedane = Pokemon.new(
      name: 'フシギダネ',
      type: 'くさ',
      hp: 50,
      attack: 10,
      defense: 5,
      speed: 5
    )

    [ hitokage, zenigame, fusigedane ]
  end

  def technique
    if Pokemon.new(name: 'ヒトカゲ', type: 'ほのお', hp: 50, attack: 10, defense: 5, speed: 5)
      ['たいあたり','なきごえ','ひのこ']
    elsif Pokemon.new(name: 'ゼニガメ', type: 'みず', hp: 50, attack: 10, defense: 5, speed: 5)
      ['たいあたり','なきごえ','あわ']
    elsif Pokemon.new(name: 'フシギダネ', type: 'くさ', hp: 50, attack: 10, defense: 5, speed: 5)
      ['たいあたり','なきごえ','つるのむち']
    end
  end

  def tutorial
    puts 'わしの名はオーキド博士'
    puts 'ポケモンのことならなんでもしっている博士じゃ'
    puts '今から旅に出るならこの3匹のポケモンの中から好きなポケモンを選ぶとよいぞ'

    puts "*" * 30
  
    @pokemon.each.with_index(1) do |pokemon, i|
      puts "#{i}: #{pokemon.name}, #{pokemon.type}"
    end
  end
end