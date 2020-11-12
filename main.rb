def get_type(value)
  h = {
      "Integer" => "int",
      "String" => "str",
      "TrueClass" => "bool",
      "FalseClass" => "bool",
      "Array" => "array"
  }
  h[value.class.name]
end

p get_type(0) == "int"
p get_type(1) == "int"
p get_type("a") == "str"
p get_type(true) == "bool"
p get_type([]) == "array"