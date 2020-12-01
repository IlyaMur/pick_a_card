require 'digest'

puts "Введите слово или фразу для шифрования:"

word = gets.chomp

puts "Каким способом зашифровать:"
puts "
1. MD5
2. SHA1"
mode = gets.to_i

until mode.between?(1, 2)
  puts 'Выберите 1 или 2'
  mode = gets.to_i
end

case mode
when 1
  puts Digest::MD5.hexdigest word
when 2
  puts Digest::SHA1.hexdigest word
end