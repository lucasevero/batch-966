def tag(type, content, attr = {})
  attr_str = ""
  attr.each do |key, value|
    attr_str << " #{key}=\"#{value}\""
  end
  "<#{type}#{attr_str}>#{content}</#{type}>"
end

# 01
# => "<h1>Hello World</h1>"
puts tag("h1", "Hello World!")

# 02
# => "<a src="https://my.site.com" alt="This is my website">Click me!</a>"

my_attr = {
  "src" => "https://my.site.com",
  "alt" => "This is my website"
}
puts tag("a", "Click me!", my_attr)
