require_relative 'string_patch'

puts "hello world".shout                  # => "HELLO WORLD !!!"
puts "HELLO WORLD".whisper                # => "hello world ..."
puts "madam".palindrome?                  # => true
puts "not a palindrome".palindrome?       # => false
puts "SnakeCaseConversion".to_snake_case  # => "snake_case_conversion"