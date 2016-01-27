#!/usr/bin/ruby -w
#:set ft=ruby
#:set ts=2
# Author: Jonathan D. Poole <jpoole@digitaljedi.ca>
# DatE: 01.26.2016

require_relative('lib/BMI.rb')

puts "Welcome to Fatty"
puts "----------------"

# Get the users weight in kilograms
puts "Enter Weight (kg):"
# Convert weight to a float
w = gets.to_f

# Get users height in meters
puts "Thanks, Height? (meters):"
# Convert height to a float
h = gets.to_f

# Initiate object BMI
bmi = BMI.new(w, h)


# Calculate and print out users BMI
puts "You entered weight: #{w} kg and height of #{h} meters"
puts "Calculating BMI"

bmi_point = bmi.calculate(w, h)
bmi_value = bmi.value(bmi_point)

puts "Your Body Mass Index is #{bmi_point}"
puts "According to the Department of Health and Human Services/National Institutes of Health"
puts "Your body mass is classified as: #{bmi_value}"
