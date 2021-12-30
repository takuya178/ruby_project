class Tutorial
  attr_reader :pokemon

  def initialize(**params)
    @pokemon = params[:pokemon]
  end

  def start
    puts 'わしの名はオーキド博士'
    puts 'そこに3びきポケモンがいるじゃろう！'
    puts 'モンスターボールのなかにポケモンが入れてあるんじゃ'
    puts '今から旅に出るならおまえに1ぴきやろう！ さあえらべ'
  
    puts "*" * 30
  
    @pokemon.each.with_index(1) do |pokemon, i|
      puts "#{i}: #{pokemon.name.mb_ljust(10)}, #{pokemon.type}タイプ"
    end
  end
end
