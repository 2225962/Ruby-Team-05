class Person
  %w[name age location].each do |attribute|
    define_method("get_#{attribute}") do
      instance_variable_get("@#{attribute}")
    end

    define_method("set_#{attribute}") do |value|
      instance_variable_set("@#{attribute}", value)
    end
  end
end


person = Person.new
person.set_name("Josh")
puts person.get_name 
