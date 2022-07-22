def tag(type, content, attr = {})
  attr_str = ""
  attr.each do |key, value|
    attr_str << " #{key}=\"#{value}\""
  end
  "<#{type}#{attr_str}>#{content}</#{type}>"
end

puts tag("h1", "Hello World!")
# => "<h1>Hello World</h1>"

# => "<a src="https://my.site.com" alt="This is my website">Click me!</a>"

my_attr = {
  "src" => "https://my.site.com",
  "alt" => "This is my website"
}
puts tag("a", "Click me!", my_attr)

def me(info = {})
  "Name: #{info[:first_name]} #{info[:last_name]}\n
  Age: #{info[:age]}\n
  Team: #{info[:soccer_club]}"
end
puts me(first_name: "luca", last_name: "severo", soccer_club: "Fluminense FC")
