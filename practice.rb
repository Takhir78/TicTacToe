# counter = 0
# while counter < 100
# 	puts "counter value: #{counter}"
# 	counter+=5

# end


# a = 5

# case a
# 	when 3
# 		puts "ush"
# 	when 4
# 		puts "tort"
# 	when 5 
# 		puts "bes"
# 	end

# x = 0
# while x < 10
#   puts x
#   x += 1
# end

# a = 0
# until a > 10
#   puts "a = #{a}"
#   a +=2
# end

# x = 15
# until x <= 10
#   puts x
#   x -= 2
# end

# a = (1..5).to_a
# puts a # [1, 2, 3, 4, 5, 6, 7]

# b = (79...82).to_a
# puts b # [79, 80, 81]

# c = ("a".."d").to_a
# print c # [a, b, c, d]

# age = 24

# case age
# when 0..14
#   puts "Child"
# when 15..24
#   puts "Youth"
# when 25..64
#   puts "Adult"
# else
#   puts "Senior"
# end

# for i in (1..10)
#   puts i
# end

# for i in 1..5
#   break if i > 3
#   puts i
# end

# for i in 0..10
#   next if i %2 == 0
#   puts i
# end

# x = 1
# loop do
#   puts x
#   x *= 5
#     break if x > 100
# end

# a = 2
# loop do
#   puts a
#   a += 3
#   break if a > 8
# end

# x = 0
# for i in 2...4
#   x+=i
# end
# puts x

# a = [1, 2, 3]
# b = [4, 5]

# res = a + b
# print res # [1, 2, 3, 4, 5]

# a = [1, 2, 3, 4, 5]
# b = [2, 4, 5, 6]

# res = a - b
# print res #[1, 3]

# a = [3, 7, 5]
# b = [1, 3]
# res = a - b
# puts res[0]

# arr = [2, 4, 6]
# arr.reverse!
# puts arr[1]

# arr = ["a", "b", "a"]
# arr << "z"
# arr.uniq!
# puts arr.size

# arr = [5, [9, 4, 6], [8]]
# puts arr[1][0]

# cars = {
#   bmw: { year:2016, color:"red"},
#   mercedes: { year:2012, color:"black"},
#   porsche: { year:2014, color:"white"}
# }

# puts cars[:bmw][:color]

# test = {
#   a:"A",
#   b:{c:"C", d:"D"}
# }
# puts test.length

# arr = [8, 11, 4]
# res = 1
# arr.each do |z|
# res *= z
# end

# h = {a:8, b:9, c:18}
# sum = 0
# h.each {|key, val| sum+=val}
# puts sum

# x = 8
# x /= 2
# y = 1
# x.times {y+=2}
# puts y

# text = "I am learning Ruby and it is fun!"

# text.downcase!

# str = "Hello there"
# str.downcase!
# puts str[4]

# text = "I am learning Ruby and it is fun!"
# text.downcase!
# freqs = {}
# freqs.default = 0

# text.each_char { |char| freqs[char] += 1}

# ("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }

# s = "some text goes here"
# c = 0
# s.each_char do |x| 
#   c += 1 if x == "e"
# end
# puts c

# arr = [5, 6, 8, 4]
# arr << 3
# arr.reverse!
# res = arr[2...4]
# puts res[1]

# h = {a:2, b:8, c:73}
# sum = 0
# h. each do |k, v|
# 	sum+=v
# end

# t = {a:1, b:2, c:3, d:4}
# res = 0
# t.each {|x, y| res += y if y%2 != 0 }
# puts res

arr = [5, 6, 8, 3]
arr.reverse!
arr[1].times {puts "in a loop"}
