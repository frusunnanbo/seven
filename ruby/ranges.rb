def fit_in_bucket number, bucket
  if number == bucket[0] - 1
    bucket.unshift number
  elsif number == bucket[-1] + 1
    bucket.push number
  elsif bucket.include?(number)
    bucket
  else
    false
  end
end

def ranges numbers
  buckets = []
  for number in numbers do
    puts "#{buckets}"
    fitted = false
    for bucket in buckets do 
      break if fitted = fit_in_bucket(number, bucket)
    end
    buckets.push [number] unless fitted
  end
  puts "#{buckets}"
end

def random_number_array
  10.times.map{ Random.rand(10) }
end

random_numbers = random_number_array
puts "#{random_numbers}"
ranges random_numbers
