class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new()
    req = Rack::Request.new(env)
    if req.path.include?("/items/")
      item_name = req.path.split("/items/").last
      @@items.each do |i|
        if i.name == item_name
          resp.write(i.price)
          
      
  end
end