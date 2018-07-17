# Every method can have inputs (arguments)
# and an output (return value)

def say_hello(name)
  greetings = "Hello, my name is #{ name }"
  return greetings
end

# "variable scope"
result = say_hello('Fred')

# ... do some other stuff ...

# "Hello, my name is Fred"
puts result

# puts say_hello('Fred')
# puts say_hello('Graham')
# puts say_hello('Fred')
# puts say_hello('Val')
# puts say_hello('Fred')
# puts say_hello('Tyler')
