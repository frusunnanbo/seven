ARGV.each { |arg| p arg }

filename = ARGV[0]
pattern = Regexp.new(ARGV[1])

File.open(ARGV[0], 'r') do |file|
  file.readlines
    .map
    .with_index
    .select { |indexed_line| indexed_line.first =~ pattern }
    .each { |indexed_line| puts "#{indexed_line.last}: #{indexed_line.first}" }
end
