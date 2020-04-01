class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new()
    req = Rack::Request.new(env)
    if req.path.contains?("/items/")
      item = req.path.split("/items/").last
      
      
  end
end