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

  def battle(rival)
    puts "まてよ！ #{@name}！ せっかくじーさんにポケモンをもらったんだ。ちょっとおれのあいてをしてみろ！"
    puts "#{rival.name}が勝負を仕掛けてきた。"
    puts "#{rival.name}は#{rival.pokemon.name}をくりだした！"
    puts "ゆけ！ #{@pokemon.name}"
    first_select

    if @first_s == 1
      puts 'バトル開始'
    else
      puts '少々お待ちお'
    end


  end

  def first_select
    puts "*" * 30
    selects = ['たたかう', 'どうぐ', 'ポケモン', 'にげる']

    selects.each.with_index(1) do |s, i|
      puts  "#{i}: #{s}" 
    end
    print '>'

    @first_s = gets.to_i
    p @first_s
    puts "*" * 30
  end

  def technique_select
  end
end

# たたかうをクリックされたら技名を表示
# たいあたり、ひのこ、はっぱがったー、なきごえなどの技名がある。
