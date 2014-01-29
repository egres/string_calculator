# StringCalculator

Simple String calculator with a single method that takes a string of integers and returns their sum.
The string can be comma and new line (\n) delimited or supplied with a custom delimiter.

## Installation

Add this line to your application's Gemfile:

    gem 'string_calculator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_calculator

## Usage

    - The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will 
     return 0) for example "" or "1" or "1,2"
     
    - to change a delimiter, the beginning of the string can contain a separate line that looks like 
     this: //[delimiter]\n[numbers] for example //;\n1;2 returns three where the 
     default delimiter is ;.
     
    - Calling Add with a negative number will throw an exception "negatives not allowed" Ð and 
    the negative that was passed. If there are multiple negatives, all of them are the exception message.
     

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
