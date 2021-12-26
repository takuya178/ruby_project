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
    elsif "#{character.pokemon.name}" == "ゼニガメ"
      puts "なら#{@name}はフシギダネじゃな"
    elsif "#{character.pokemon.name}" == "フシギダネ"
      puts "なら#{@name}はヒトカゲじゃな"
    end

  end
end