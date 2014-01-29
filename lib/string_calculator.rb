require "string_calculator/version"

module StringCalculator
  extend self
  
  def self.add(numbers)
    return 0 if numbers.empty?
    
    numbers.split(',').
            map{ |n| n.to_i }.
            inject(:+)   
  end
end
