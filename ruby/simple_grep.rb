ARGV.each { |arg| p arg }

filename = ARGV[0]
pattern = Regexp.new(ARGV[1])

File.open(ARGV[0], 'r') do |file|
  file.readlines
    .select { |line| line =~ pattern }
    .each { |line| puts "#{line}" }
end
