def to_snake_case(str)
  str.chars.map { |c| /[[:upper:]]/.match(c) ? "_#{c.downcase}" : c }.join
end

def to_camel_case(str)
  s = str.split('_').map(&:capitalize).join
  "#{s[0].downcase}#{s[1..-1]}"
end

p to_camel_case("hello_edabit") == "helloEdabit"
p to_snake_case("helloEdabit") == "hello_edabit"
p to_camel_case("is_modal_open") == "isModalOpen"
p to_snake_case("getColor") == "get_color"