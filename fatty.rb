#!/usr/bin/ruby -w
#:set ft=ruby
#:set ts=2
#

puts "Welcome to Fatty"
puts "Enter Weight (kg):"
w = gets
puts "Thanks, Height? (meters):"
h = gets

puts "You entered weight: #{w} and height of #{h}"

bmi = w.to_i/h.to_i ** 2
puts "BMI: #{bmi}"
