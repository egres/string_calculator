require "string_calculator/version"

module StringCalculator
  extend self
  
  def self.add(string_of_numbers)
    return 0 if string_of_numbers.empty?
    
    custom_delimiter_matches = /^\/\/(?<delimiter>.+)\n/.match(string_of_numbers)
    unless custom_delimiter_matches.nil?
      custom_delimiter = custom_delimiter_matches.captures.first
      string_of_numbers.slice! "//#{custom_delimiter}\n"
      custom_delimiter << '|'
    end
    
    numbers = string_of_numbers.split( %r{#{custom_delimiter}[,\n]} ).map{ |n| n.to_i }
    negative_numbers = numbers.select { |n| n < 0 }
    
    raise "negatives not allowed: #{negative_numbers}!" unless negative_numbers.empty?
    
    numbers.inject(:+)
  end
end
