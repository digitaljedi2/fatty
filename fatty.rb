#!/usr/bin/ruby -w
#:set ft=ruby
#:set ts=2
#

puts "Welcome to Fatty"
puts "Enter Weight (kg):"
w = gets.to_i
puts "Thanks, Height? (meters):"
h = gets.to_i

puts "You entered weight: #{w} and height of #{h}"

bmi = w/h ** 2
puts "BMI: #{bmi}"
puts "Calculating BMI"
puts "#{bmi} is Underweight" if bmi < 18.5
puts "#{bmi} is Normal" if bmi > 18.5 && bmi < 24.9
puts "#{bmi} is overweight" if bmi > 25 && bmi < 29.9
puts "#{bmi} is obese" if bmi > 30
