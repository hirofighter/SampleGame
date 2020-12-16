def introduce
  name = "三郎"
  live = "宮崎"

  puts "私は#{live}に住んでいる#{name}です"
  return name
end

result = introduce

puts result


def upcase(word)
  word.upcase
end

str = upcase("hello")
puts str


def bai(point)
  result = point * 2
end
puts bai(10)
