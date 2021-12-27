class Tutorial
  attr_reader :pokemon

  def initialize(**params)
    @pokemon = params[:pokemon]
  end

  def start
    puts 'わしの名はオーキド博士'
    puts 'ポケモンのことならなんでもしっている博士じゃ'
    puts '今から旅に出るならこの3匹のポケモンの中から好きなポケモンを選ぶとよいぞ'
  
    puts "*" * 30
  
    @pokemon.each.with_index(1) do |pokemon, i|
      puts "#{i}: #{pokemon.name}, #{pokemon.type}"
    end
  end
end
