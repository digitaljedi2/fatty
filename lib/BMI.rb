class BMI

  attr_reader :weight, :height

  def initialize(w, h)
    @weight = w.to_i
    @height = h.to_i
  end

  # Body Mass Index is a simple calculation using a person's height and weight. 
  # The formula is BMI = kg/m2 where kg is a person's weight in kilograms and m2 is 
  # their height in metres squared. A BMI of 25.0 or more is overweight, while the 
  # healthy range is 18.5 to 24.9. BMI applies to most adults 18-65 years.
  
  def calculate(weight, height)
    # Returns a bmi value rounded two the nearest decimal
    # example: 24.5
    (weight / ( height * height )).round(1)
  end

  # Returns the BMI score
  # Underweight = less than 18.5
  # Normal = between 18.5 and 24.9
  # Overweight = between 25 and 29.9
  # Obese = over 30
  
  def value(bmi)
    return "Underweight" if bmi < 18.5
    return "Normal" if bmi.between?(18.5,24.9)
    return "Overweight" if bmi.between?(25,29.9)
    return "Obese" if bmi > 30
  end

  # Convert from pounds to kilograms
  # I needed this function in order to get my own weight in kilograms
  
  def to_kg(lbs)
    lbs * 0.453592
  end

  # Convert from feet to meters
  # again I had no clue how tall I was in meters, so I had to convert
  # from feet to meters
  
  def to_m(h)
    h * 0.3048
  end


end
