class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new()
    req = Rack::Request.new(env)
    if req.path.include?("/items/")
      item = req.path.split("/items/").last
      if @@items.include?(item)
        resp.write()
      
  end
end