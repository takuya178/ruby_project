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

    puts @pokemon.technique[1]
  end

  def battle(rival)
    puts "まてよ！ #{@name}！ せっかくじーさんにポケモンをもらったんだ。ちょっとおれのあいてをしてみろ！"
    puts "#{rival.name}が勝負を仕掛けてきた。"
    puts "#{rival.name}は#{rival.pokemon.name}をくりだした！"
    puts "ゆけ！ #{@pokemon.name}"
    first_select
  end

  # 最初の選択画面
  def first_select
    puts "*" * 30
    selects = ['たたかう', 'どうぐ', 'ポケモン', 'にげる']

    selects.each.with_index(1) do |s, i|
      puts  "#{i}: #{s}" 
    end
    print '>'

    first_s = gets.to_i
    p first_s
    puts "*" * 30

    if first_s == 1
      puts technique_select
    elsif first_s == 2
      puts 'てもちはありません'
      first_select
    elsif first_s == 3
      puts '他のポケモンはいません'
      first_select
    elsif first_s == 4
      puts 'バトル中です！ にげられません'
      first_select
    end
  end

  # 技を選択する
  def technique_select
    pokemon.technique.sample
  end
end

# たたかうをクリックされたら技名を表示
# たいあたり、ひのこ、はっぱがったー、なきごえなどの技名がある。
