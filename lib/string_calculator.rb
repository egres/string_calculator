require "string_calculator/version"

module StringCalculator
  extend self
  
  def self.add(numbers)
    return 0 if numbers.empty?
    
    numbers.split(%r{,|\n}).
            tap{|n| raise "Delimiter violation" if n.include?('')}.
            map{ |n| n.to_i }.
            inject(:+)   
  end
end
