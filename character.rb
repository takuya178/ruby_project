class Character
  attr_reader :name, :money, :pokemon

  def initialize(**params)
    @name = params[:name]
    @money = params[:money].to_i
    @pokemon = params[:pokemon]
  end

  def character_pokemon
    puts 'わしの名はオーキド博士'
    puts 'ポケモンのことならなんでもしっている博士じゃ'
    puts '今から旅に出るならこの3匹のポケモンの中から好きなポケモンを選ぶとよいぞ'

    puts "*" * 30
    @pokemon.each.with_index(1) do |pokemon, i|
      puts "#{i}: #{pokemon.name}, #{pokemon.type}"
    end

    print 'ポケモンをえらんでください > '
    num = gets.to_i
    p @pokemon = @pokemon[num -1]
    puts "*" * 30
  end
end