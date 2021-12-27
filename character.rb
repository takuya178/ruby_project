class Character
  attr_reader :name, :money, :pokemon

  def initialize(**params)
    @name = params[:name]
    @money = params[:money].to_i
    @pokemon = params[:pokemon]
  end

  def choice(pokemon)
    print 'ポケモンをえらんでください > '
    num = gets.to_i
    p pokemon = pokemon[num -1]
    @pokemon = pokemon
    puts "*" * 30
  end

  def battle
    puts @pokemon.name
    puts @pokemon.type
  end
end