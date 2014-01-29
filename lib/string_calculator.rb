require "string_calculator/version"

module StringCalculator
  extend self
  
  def self.add(numbers)
    return 0 if numbers.empty?
    
    custom_delimiter_matches = /^\/\/(?<delimiter>.+)\n/.match(numbers)
    unless custom_delimiter_matches.nil?
      custom_delimiter = custom_delimiter_matches.captures.first
      numbers.slice! "//#{custom_delimiter}\n"
      custom_delimiter << '|'
    end
    
    numbers.split(%r{#{custom_delimiter},|\n}).
            map{ |n| n.to_i }.
            inject(:+)   
  end
end
