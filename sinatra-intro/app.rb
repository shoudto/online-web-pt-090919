class App

    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
  
      if req.path.match(/hello/)
        resp.write 'Hello, World!'
      else
        resp.write 'Nothing'
      end
      resp.finish
    end
  
  end

