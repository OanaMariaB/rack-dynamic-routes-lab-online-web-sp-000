class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items/<ITEM NAME>"
      resp.write "You requested the items"
    elsif
      resp.write "Route not found"
      resp.status = 404
    elsif 
      
    end
    

    resp.finish
  end
end
