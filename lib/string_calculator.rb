require "string_calculator/version"

module StringCalculator
  extend self
  
  def self.add(numbers)
    return 0 if numbers.empty?
    
    return numbers.to_i if numbers.split(',').length == 1
    
    integers = numbers.split(',')
    integers.first.to_i + integers.last.to_i  
  end
end