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
      hp: 100,
      attack: 10,
      defense: 5,
      speed: 5
    )
    zenigame = Pokemon.new(
      name: 'ゼニガメ',
      type: 'みず',
      hp: 100,
      attack: 10,
      defense: 5,
      speed: 5
    )
    fusigedane = Pokemon.new(
      name: 'フシギダネ',
      type: 'くさ',
      hp: 100,
      attack: 10,
      defense: 5,
      speed: 5
    )

    [ hitokage, zenigame, fusigedane ]
  end
end