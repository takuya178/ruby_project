class Character
  attr_reader :name, :money, :pokemon

  def initialize(**params)
    @name = params[:name]
    @money = params[:money].to_i
    @pokemon = params[:pokemon]
  end

  # ポケモンを選択
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
    technique_damage
  end

  private

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
      technique_select
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

  # ポケモンのそれぞれの技を表示
  def technique
    if @pokemon.name == 'ヒトカゲ'
      ['たいあたり','なきごえ','ひのこ']
    elsif @pokemon.name == 'ゼニガメ'
      ['たいあたり','なきごえ','あわ']
    elsif @pokemon.name == 'フシギダネ'
      ['たいあたり','なきごえ','つるのむち']
    end
  end

  # 技がランダムで表示される
  def technique_select
    technique.each.with_index(1) do |t, i|
      puts "#{i}: #{t}"
    end

    puts "*" * 30
    print '>'

    @technique_judge = gets.to_i
    puts "*" * 30
  end

  # 技のダメージをそれぞれ定義
  def technique_damage
    if @technique_judge == 1
      puts "#{@pokemon.name}の攻撃！"
      puts "たいあたりをくりだした"
    elsif @technique_judge == 2
      puts "#{@pokemon.name}の攻撃！"
      puts "なきごえをくりだした"
    else
      puts "スペシャルあったっく"
    end  
  end

end

# 技を選択してそれぞれダメージを計算する
