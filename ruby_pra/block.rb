[1, 2, 3, 4, 5].each do |i|
  puts i*2
end
alphabet = ["a", "b", "c", "d", "e"]
alphabet.each do |i|
  puts i.upcase
end
sum = 0
outcome = {"参加費"=>1000, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |item, price|
  sum += price
end
puts "合計 : #{sum}"
file = File.open("a")
file.each_line do |line|
  print line
end
file.close
File.open("a") do |file2|
  file2.each_line do |line|
    print line
  end
end
array = ["Ruby", "Perl", "PHP", "Python"]
sorted1 = array.sort{ |a, b| a <=> b }
sorted2 = array.sort{ |a, b| a.length <=> b.length }
p sorted1
p sorted2
ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write
)

call_num = 0
sort_ary = ary.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end

puts "ソート結果 #{sort_ary}"
puts "配列要素数 #{ary.length}"
puts "ブロック呼び出し回数 #{call_num}"

call_num = 0
sort_ary = ary.sort_by do |item|
  call_num += 1
  item.length
end

puts "ソート結果 #{sort_ary}"
puts "配列要素数 #{ary.length}"
puts "ブロック呼び出し回数 #{call_num}"
