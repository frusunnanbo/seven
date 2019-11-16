def random_multiplication
  factor1 = rand(1..11)
  factor2 = rand(1..11)
  product = factor1 * factor2
  puts "#{factor1} * #{factor2} = #{product}"
end

loop do
  random_multiplication
  input = gets.strip
  break if input == 'q'
end


