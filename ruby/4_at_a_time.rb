# coding: utf-8
numbers = 16.times.map { rand(10) }
puts "#{numbers}"

all_groups = (0..3).inject([]) { |all,i| all.push (0..3).inject([]) { |all,j| all.push numbers[i * 4 +j] } }

all_groups.each { |i| puts "#{i}" }

