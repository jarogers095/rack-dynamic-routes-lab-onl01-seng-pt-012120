class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new()
    req = Rack::Request.new(env)
    
    if req.path.split("/").first == "items"
      found_item = nil
      item_name = req.path.split("/items/").last
      @@items.each do |i|
        if i.name == item_name
          found_item = i
        end
      end
      
      if found_item
        resp.write(found_item.price)
      else
        resp.status = 400
        resp.write("Item not found")
      end
    else
      resp.status = 404
      resp.write("File not found")
    end
    resp.finish
  end
end