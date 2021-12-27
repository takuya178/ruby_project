class Rival
  attr_reader :name, :money, :pokemon
  def initialize(**params)
    @name = params[:name]
    @money = params[:money]
    @pokemon = params[:pokemon]
  end

  def rival_pokemon(character)
    if "#{character.pokemon.name}" == "ヒトカゲ"
      puts "なら#{@name}はゼニガメじゃな"
      @pokemon = Pokemon.new(name: 'ゼニガメ', type: 'みず', hp: 50, attack: 10, defense: 5, speed: 5)
    elsif "#{character.pokemon.name}" == "ゼニガメ"
      puts "なら#{@name}はフシギダネじゃな"
      @pokemon = Pokemon.new(name: 'フシギダネ', type: 'くさ', hp: 50, attack: 10, defense: 5, speed: 5)
    elsif "#{character.pokemon.name}" == "フシギダネ"
      puts "なら#{@name}はヒトカゲじゃな"
      @pokemon = Pokemon.new(name: 'ヒトカゲ', type: 'ほのお', hp: 50, attack: 10, defense: 5, speed: 5)
    end
    @pokemon.name

  end


end