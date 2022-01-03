class Rival
  attr_reader :name, :money, :pokemon
  def initialize(**params)
    @name = params[:name]
    @money = params[:money]
    @pokemon = params[:pokemon]
  end

  def rival_choice(character)
    if "#{character.pokemon.name}" == "ヒトカゲ"
      @pokemon = Pokemon.new(name: 'ゼニガメ', type: 'みず', hp: 100, attack: 10, defense: 5, speed: 5)
      puts "なら#{@name}は#{@pokemon.name}じゃな"
      puts "#{@name}は#{@pokemon.name}を選択した"
    elsif "#{character.pokemon.name}" == "ゼニガメ"
      @pokemon = Pokemon.new(name: 'フシギダネ', type: 'くさ', hp: 100, attack: 10, defense: 5, speed: 5)
      puts "なら#{@name}は#{@pokemon.name}じゃな"
      puts "#{@name}は#{@pokemon.name}を選択した"
    elsif "#{character.pokemon.name}" == "フシギダネ"
      @pokemon = Pokemon.new(name: 'ヒトカゲ', type: 'ほのお', hp: 100, attack: 10, defense: 5, speed: 5)
      puts "なら#{@name}は#{@pokemon.name}じゃな"
      puts "#{@name}は#{@pokemon.name}を選択した"
    end
  end

  def buttle(character)
    
  end
end