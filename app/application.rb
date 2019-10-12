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
      item = @@items.find{|i| i.name == item_name}

     if item.nil?
       resp.write "Item not found"
       resp.status = 400
     else
       resp.write item.price
     end

    end


    resp.finish
  end
end
