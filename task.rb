# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  #names.push("斉藤")：コメントRubyでは << を使用する方が一般的
  names << "斉藤"
  puts names
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  array = array1 + array2
  puts array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count 3
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!

  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p (array1).none?
  p (array2).none?
end



def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map { |number| number * 10 }
  p numbers2
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  #array.map! { |x| x.to_i } コメント⇨&:でより簡潔に記述可能
  array.map!(&:to_i)

  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    #if( food.include?("うに") ) then コメント：rubyの場合if()やthenの文字列は不要
    if food.include?("うに")
      puts "#{food}:好物です"
    else
      puts "#{food}:まあまあ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  #newsports = sports.flatten.uniq コメント：破壊的メソッドを使えば新たな変数は不要
  sports.flatten!.uniq!
  puts "ユーザーの趣味一覧"
  
  #newsports.each.with_index(1) do |sport, i|
  sports.each.with_index(1) do |sport, i|
    puts "No.#{i} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.merge!(update_data)
  puts user_data

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  data2 = data.keys
  puts data2

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  #if data1.has_key?(:age)コメント：コードが短い場合は三項演算子を使用可能
  # puts "OK"
  #else
  # puts "NG"
  #end
  
  #if data2.has_key?(:age)
  # puts "OK"
  #else
  # puts "NG"
  #end

  puts data1.has_key?(:age) ? "OK" : "NG"
  puts data2.has_key?(:age) ? "OK" : "NG"
  
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 },
  ]

  # 以下に回答を記載
  #users.each do |values|コメント：変数名は values ではなく中身が分かりやすい変数名に
  #puts "私の名前は#{values[:name]}です。年齢は#{values[:age]}歳です。"
  users.each do |user|
  puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end

end

class UserQ17
  # 以下に回答を記載

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載

end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載

end

class Zoo
  # 以下に回答を記載

end

def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108),
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
